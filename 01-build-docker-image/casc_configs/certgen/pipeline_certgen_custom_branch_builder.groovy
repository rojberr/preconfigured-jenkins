pipelineJob('certgen/certgen_custom_branch_builder') {
  displayName 'certgen custom branch build'
  description '<dl>Triggered manually!</dl>'
  parameters {
    stringParam 'source', 'master', 'The source branch'
  }
  definition {
    cpsScm {
      scm {
        git {
          remote {
            url('https://github.com/rojberr/certgen.git')
          }
          branch '${source}'
        }
      }
    }
  }
  properties {}
}