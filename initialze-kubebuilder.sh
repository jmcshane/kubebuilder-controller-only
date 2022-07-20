kubebuilder init --domain superorbital.io --owner svc-example --repo github.com/jmcshane/kubebuilder-controller-only
kubebuilder create api --group "" --controller --version v1 --kind Service --resource=false
## update code
make deploy # don't need to make install since that just does CRDs (which we don't have)
## Removed manager from config/ directory so I can run it locally instead
make run > kubebuilder.log
