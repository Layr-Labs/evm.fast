import Lean

/-- Generators propose literals; the generated reflexivity terms are still
checked by the kernel. Import the tactic in every generated proof module. -/
def writeCompactCertificate (path : System.FilePath) (contents : String) : IO Unit :=
  IO.FS.writeFile path
    (if contents.contains "kernel_rfl" then "import InitECandidate.Proofs.CompactComputation\n" ++
      (if contents.contains "Flapjack.WordAlloc.joinIte" then "import InitECandidate.Proofs.DeadBranchComputation\n" else "") ++
      (if contents.contains "InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq" then "import InitECandidate.Proofs.SmallSsaKernelComputation\n" else "") ++
      (if contents.contains "InitECandidate.Proofs.CompilerStages.fullCompile_expanded" then "import InitECandidate.Proofs.CompilerStages\n" else "") ++
      contents else contents)
