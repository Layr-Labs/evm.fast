import Lean
import InitECandidate.Proofs.KernelComputation


import InitECandidate.Proofs.DeadComputation
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.RegAlloc.Executable
import Flapjack.Compiler.Backend.WordToWord.FastCompile
import Flapjack.Compiler.Backend.RiscVConfig.Executable
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
/-! A small optimizer proof environment. Configuration is a separate module;
without this import, autoImplicit could accidentally generalize riscvConfig.
No pipeline, parser, encoding diagnostics, or complete frontend imports are needed. -/

set_option autoImplicit false
namespace InitECandidate.Proofs.SmallOptimizerComputation
attribute [scoped cbv_eval] Flapjack.RegAlloc.regAllocExecutable_eq
attribute [scoped cbv_eval] Flapjack.WordAlloc.removeDeadStructural_eq

/- Leave configuration fields suspended until a compiler projection demands them.
The input expression is returned unchanged, so this only changes evaluation order. -/
open Lean Meta Sym Meta.Tactic.Cbv in
scoped cbv_simproc ↓ holdAsmConfig (@Flapjack.Compiler.Encoders.Asm.AsmConfigExact.mk _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _) :=
  fun _ => return .rfl (done := true)
end InitECandidate.Proofs.SmallOptimizerComputation

