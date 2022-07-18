#include <string.h>
#include <jansson.h>

int main() {
  FILE *fp;
  char buffer[1024];

  fp = fopen("sample.json", "r");
  fread(buffer, 1024, 1, fp);
  fclose(fp);

  json_error_t error;
  json_t *result = json_loads(buffer, 0, &error);
  json_t *value;

  if(result == NULL) {
    fputs(error.text, stderr);
    return 1;
  }

  json_t *name = json_object_get(result, "name");
  printf("%s\n", json_string_value(name));

  json_t *age = json_object_get(result, "age");
  printf("%lld\n", json_integer_value(age));

  int index;
  json_t *friends = json_object_get(result, "friends");
  json_array_foreach(friends, index, value) {
    printf("%d:", index);
    printf("%s\n", json_string_value(value));
  }

  return 0;
}
