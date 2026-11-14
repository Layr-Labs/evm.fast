import InitECandidate.Solver.MemSafe.BlsSlotCost.Read
import InitECandidate.Solver.MemSafe.BlsSlotCost.Address
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.PairCost.Read
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Read
open InitECandidate.Solver.MemSafe.BlsSlotCost.Read
variable {σ : Type}
theorem scaled_access {t : PanSemStateFiniteExact 64 σ}
 {B : ExpHOL 64} {i slot : MlS} {k : BitVec 64} {rest : ProgHOL 64}
 (hB : isProjectedBase i B = true) (hr : readSlotB slot rest = true) (ht : InCtx t guestCtx)
 (hc : Completes t (.dec slot .one (.op .add [B,.panop .mul [.var .local i,.const k]]) rest)) :
 ∃ w, projectedAddr B i k t = some w ∧ Hit t.memaddrs w := by
 obtain ⟨inst,v,hv⟩ := decl_source_eval hc
 have hinst : inst = (fun a => Classical.propDecidable (t.memaddrs a)) := Subsingleton.elim _ _
 subst inst
 have hv' : ev t (.op .add [B,.panop .mul [.var .local i,.const k]]) = some v := hv
 obtain ⟨w,rfl⟩ := ev_op_word hv'
 refine ⟨w,eval_projectedAddr hv',?_⟩
 by_contra hno
 have hnoX : ¬ Hit guestCtx.memaddrs w := by simpa only [ht.2.1] using hno
 have hx : Hoare σ guestCtx (fun s => s = t)
   (.dec slot .one (.op .add [B,.panop .mul [.var .local i,.const k]]) rest)
   (fun r _ => r ≠ none ∧ r ≠ some .continue) := by
  apply InitECandidate.Solver.Spec.hoare_dec
  intro s hs heq v hv hsh
  subst s
  rw [hv'] at hv
  cases hv
  apply InitECandidate.Solver.Spec.hoare_pre (readSlotB_sound slot rest hr)
  intro u hu heq
  subst u
  exact ⟨w,lookup_update_self _ _ _,hnoX⟩
 have hh := hx t ht rfl (hc.elim (fun h => by rw [h]; trivial) (fun h => by rw [h]; trivial))
 exact hc.elim hh.1 hh.2
#print axioms scaled_access
end InitECandidate.Solver.MemSafe.BlsSlotCost.Read
