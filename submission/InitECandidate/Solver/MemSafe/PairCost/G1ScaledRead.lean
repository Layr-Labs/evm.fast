import InitECandidate.Solver.MemSafe.PairCost.G1CallRead
import InitECandidate.Solver.MemSafe.PairCost.ScaledAddr
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.PairCost.Read
variable {σ : Type}
theorem g1_scaled_access {t : PanSemStateFiniteExact 64 σ}
    {B out : ExpHOL 64} {i slot rn : MlS} {sh : ShapeHOL} {k : BitVec 64} {rest : ProgHOL 64}
    (hB : isBase i B = true) (ht : InCtx t guestCtx)
    (hc : Completes t (.dec slot .one (.op .add [B,.panop .mul [.var .local i,.const k]])
      (.decCall rn sh (nm "bn254_parse_g1") [.var .local slot,out] rest))) :
    ∃ w, scaledAddr B i k t = some w ∧ Hit t.memaddrs w := by
  obtain ⟨inst,v,hv⟩ := decl_source_eval hc
  have hinst : inst = (fun a => Classical.propDecidable (t.memaddrs a)) := Subsingleton.elim _ _
  subst inst
  have hv' : ev t (.op .add [B,.panop .mul [.var .local i,.const k]]) = some v := hv
  obtain ⟨w,rfl⟩ := ev_op_word hv'
  refine ⟨w,eval_scaledAddr _ hB hv',?_⟩
  by_contra hno
  have hx : Hoare σ guestCtx (fun s => s = t)
      (.dec slot .one (.op .add [B,.panop .mul [.var .local i,.const k]])
        (.decCall rn sh (nm "bn254_parse_g1") [.var .local slot,out] rest)) (fun _ _ => False) := by
    apply hoare_dec
    intro s hs heq v hv hsh
    subst s
    rw [hv'] at hv
    cases hv
    refine hoare_pre g1_call_no_hit ?_
    intro u hu heq
    subst u
    refine ⟨w,?_,hno⟩
    simp [ev,evalHOLExact,setVarHOLFinite,FUPDATE]
  apply hx t ht rfl
  rcases hc with h | h
  · rw [h]; trivial
  · rw [h]; trivial
#print axioms g1_scaled_access
end InitECandidate.Solver.MemSafe.PairCost.Read
