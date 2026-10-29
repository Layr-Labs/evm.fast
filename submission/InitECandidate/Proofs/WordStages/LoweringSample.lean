import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source64
import InitECandidate.Proofs.WordStages.Source65
import InitECandidate.Proofs.WordStages.Source66
import InitECandidate.Proofs.WordStages.Source67
import InitECandidate.Proofs.WordStages.Source68
import InitECandidate.Proofs.WordStages.Source69
import InitECandidate.Proofs.WordStages.Source70
import InitECandidate.Proofs.WordStages.Source71
open Flapjack Flapjack.Compiler.Encoders.RiscV.Target
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option autoImplicit false

namespace InitECandidate.Proofs.WordStages
open InitE
theorem lowering_sample_eq :
    (panToWordCompileProgHOL riscvConfig.isa sourceDeclarations).take 8 =
      [source64, source65, source66, source67, source68, source69, source70, source71] := by
  kernel_rfl
#print axioms lowering_sample_eq
end InitECandidate.Proofs.WordStages
