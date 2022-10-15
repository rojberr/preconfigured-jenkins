pipelineJob('certgen/certgen_pr_builder') {
  definition {
    cpsScm {
      scm {
        git {
          remote {
            url('https://github.com/rojberr/certgen.git')
          }
          branch('*/master')
        }
      }
      lightweight()
    }
  }
}