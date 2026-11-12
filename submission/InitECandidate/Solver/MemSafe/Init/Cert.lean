import InitECandidate.Solver.MemSafe.Init.Main14
import InitECandidate.Solver.Final

/-!
# Init: the certificate from `main`'s conditional cost
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Eb
open InitE Flapjack.RiscV.L3 Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Encoders.Asm
open InitECandidate.Proofs.BootstrapSteps InitECandidate.Proofs.BootstrapCopy
open InitECandidate.Solver.Assembly

/-- **The certificate**, from the conditional cost `Bv` of `verify_stateless_new_payload` (at `VerPre`, no `JrNZ`). -/
theorem certificate_of_verify_costP {Bv : Nat}
    (hV : CondCost Guest.HostMemory guestCtx guestC (HR Guest.HostMemory) (nm "verify_stateless_new_payload")
      Band.sgSi VerPre Bv) :
    Certificate (Final.withScore baselineSubmission (.finite (Final.totalBoundSrc (1 + bPre Bv + 0))))
      (.finite (Final.totalBoundSrc (1 + bPre Bv + 0))) :=
  Final.certificate_of_main_costP (main_costP hV) (fun input s0 h k => pInit_of_panDeclsInit input h k)

end InitECandidate.Solver.MemSafe.Init

#print axioms InitECandidate.Solver.MemSafe.Init.certificate_of_verify_costP
