ENVOY_BUILD_SHA=$(grep lyft/envoy-build .circleci/config.yml | sed -e 's#.*lyft/envoy-build:\(.*\)#\1#' | uniq)
[[ $(wc -l <<< "${ENVOY_BUILD_SHA}") == 1 ]] || (echo ".circleci/config.yml hashes are inconsistent!" && exit 1)
