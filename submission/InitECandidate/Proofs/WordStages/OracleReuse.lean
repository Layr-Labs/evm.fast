import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.CompilerStages

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages

/-- Successful checked colouring is independent of the fallback allocator's function name. -/
theorem wordAllocWith_of_oracle {width : Nat} [NeZero width]
    (ra : WordToWord.RegAllocFn) (name alg regs : Nat) (config : AsmConfigExact width)
    (program result : WordLangProgHOL (BitVec width)) (oracle : Option (Spt Nat))
    (checked : WordAlloc.oracleColourOk regs oracle (WordAlloc.getClashTree program [])
      program (WordAlloc.getForced config program []) = some result) :
    WordToWord.wordAllocWith ra name config alg regs program oracle = result := by
  unfold WordToWord.wordAllocWith
  dsimp only
  rw [checked]

#print axioms wordAllocWith_of_oracle
end InitECandidate.Proofs.WordStages
