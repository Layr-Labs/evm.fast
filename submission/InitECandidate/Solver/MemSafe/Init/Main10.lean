import InitECandidate.Solver.MemSafe.Init.Main9

/-!
# Init: `mem_init`, the 14-call prefix, and `main`'s conditional cost
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false
set_option cbv.maxSteps 4000000000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Eb InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Aw
open Guest.Software

variable {σ : Type}

def memBody : ProgHOL 64 :=
  .seq (.assign .global (nm "heap_ptr") .baseAddr)
    (.seq (.assign .global (nm "scratch_ptr") (.const 2965299200))
      (.seq (.assign .global (nm "frame_mem_ptr") (.const 2952790016)) (.return (.const 0))))

theorem memBody_eq : initBody guestFn_mem_init = memBody := by
  conv => lhs; cbv
  conv => rhs; cbv
  rfl

theorem sourceBase_eq : InitE.sourceBase = 2701131776 := by decide

theorem ev_baseAddr {s : State σ} : ev s .baseAddr = some (.val (.word s.baseAddr)) := rfl

theorem hoare_memBody (s0 : State σ) (hP : PInit s0) :
    Hoare σ guestCtx (fun t => t = s0) memBody (fun r t => WI [] Pnd0 t) := by
  have hb : s0.baseAddr = BitVec.ofNat 64 2701131776 := by rw [← sourceBase_eq]; exact hP.2.2
  refine Spec.hoare_seq (R := fun r t => r = none ∧ t = setKvarHOLFinite .global (nm "heap_ptr")
      (.val (.word (BitVec.ofNat 64 2701131776))) s0) (hoare_assignK ?_) (fun r t _ hr _ h => absurd h.1 hr) ?_
  · intro s hs hp v hv _
    subst hp
    rw [ev_baseAddr, hb] at hv
    cases hv; exact ⟨rfl, rfl⟩
  refine Spec.hoare_seq (R := fun r t => r = none ∧ t = setKvarHOLFinite .global (nm "scratch_ptr")
      (.val (.word (BitVec.ofNat 64 2965299200))) (setKvarHOLFinite .global (nm "heap_ptr")
      (.val (.word (BitVec.ofNat 64 2701131776))) s0)) (hoare_assignK ?_) (fun r t _ hr _ h => absurd h.1 hr) ?_
  · rintro s hs ⟨-, hp⟩ v hv _
    subst hp
    rw [ev_const] at hv
    cases hv; exact ⟨rfl, rfl⟩
  refine Spec.hoare_seq (R := fun r t => r = none ∧ t = setKvarHOLFinite .global (nm "frame_mem_ptr")
      (.val (.word (BitVec.ofNat 64 2952790016))) (setKvarHOLFinite .global (nm "scratch_ptr")
      (.val (.word (BitVec.ofNat 64 2965299200))) (setKvarHOLFinite .global (nm "heap_ptr")
      (.val (.word (BitVec.ofNat 64 2701131776))) s0))) (hoare_assignK ?_) (fun r t _ hr _ h => absurd h.1 hr) ?_
  · rintro s hs ⟨-, hp⟩ v hv _
    subst hp
    rw [ev_const] at hv
    cases hv; exact ⟨rfl, rfl⟩
  refine Spec.hoare_return fun s hs hp0 v hv => ?_
  obtain ⟨-, hp⟩ := hp0
  subst hp
  exact wi_mem_init hP rfl

end InitECandidate.Solver.MemSafe.Init
