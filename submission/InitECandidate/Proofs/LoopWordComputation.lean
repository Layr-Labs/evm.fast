import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.ComputationCache

/-! Local compiler equations keep compiled child programs abstract. -/
set_option autoImplicit false
namespace InitECandidate.Proofs.LoopWordComputation
open Flapjack Flapjack.LoopToWord

theorem comp_seq_checked {width : Nat} [NeZero width] (context : Spt Nat)
    (a b : HolLoopProg width) (wa wb : WordLangProgHOL (BitVec width))
    (start middle finish : Nat × Nat)
    (ha : LoopToWord.compHOL context a start = (wa, middle))
    (hb : LoopToWord.compHOL context b middle = (wb, finish)) :
    LoopToWord.compHOL context (.seq a b) start = (.seq wa wb, finish) := by
  rw [LoopToWord.compHOL.eq_def]
  dsimp only
  rw [ha]
  dsimp only
  rw [hb]
  try rfl

theorem comp_ite_checked {width : Nat} [NeZero width] (context : Spt Nat)
    (op : Cmp) (condition : Nat) (right : RegImm (BitVec width)) (live : NumSet)
    (a b : HolLoopProg width) (wa wb : WordLangProgHOL (BitVec width))
    (start middle finish : Nat × Nat)
    (ha : LoopToWord.compHOL context a start = (wa, middle))
    (hb : LoopToWord.compHOL context b middle = (wb, finish)) :
    LoopToWord.compHOL context (.ite op condition right a b live) start =
      (.seq (.ite op (findVarHOL context condition)
        (match right with
         | .imm value => .imm value
         | .reg name => .reg (findVarHOL context name)) wa wb) .tick, finish) := by
  rw [LoopToWord.compHOL.eq_def]
  dsimp only
  rw [ha]
  dsimp only
  rw [hb]
  try rfl

theorem comp_loop_checked {width : Nat} [NeZero width] (context : Spt Nat)
    (liveIn liveOut : NumSet) (body : HolLoopProg width)
    (wordBody : WordLangProgHOL (BitVec width)) (start finish : Nat × Nat)
    (h : LoopToWord.compHOL context body start = (wordBody, finish)) :
    LoopToWord.compHOL context (.loop liveIn body liveOut) start =
      (.seq .tick (.seq (.loop (mkNewCutsetHOL context liveIn) wordBody
        (mkNewCutsetHOL context liveOut)) .tick), finish) := by
  rw [LoopToWord.compHOL, h]

theorem comp_mark_checked {width : Nat} [NeZero width] (context : Spt Nat)
    (body : HolLoopProg width) (wordBody : WordLangProgHOL (BitVec width))
    (start finish : Nat × Nat)
    (h : LoopToWord.compHOL context body start = (wordBody, finish)) :
    LoopToWord.compHOL context (.mark body) start = (wordBody, finish) := by
  rw [LoopToWord.compHOL, h]

#print axioms comp_seq_checked
#print axioms comp_ite_checked
#print axioms comp_loop_checked
#print axioms comp_mark_checked
end InitECandidate.Proofs.LoopWordComputation
