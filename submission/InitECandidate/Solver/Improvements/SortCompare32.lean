import InitECandidate.Solver.Spec.Loop
import InitECandidate.Solver.SourceCost.Table
import InitECandidate.Solver.Improvements.FourthCapturedSignedLoop
import InitECandidate.Solver.Improvements.AcceptedEcpMulIdentity
import InitECandidate.Solver.Spec.Exec

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false

namespace SortCompare32
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}
private def varE (s : String) : ExpHOL 64 := .var .local (nm s)
private def byteAt (ptr : String) : ExpHOL 64 := .loadByte (.op .add [varE ptr, varE "k"])
private def retIf (c : ExpHOL 64) : ProgHOL 64 :=
  .seq (.ite c (.return (.const (BitVec.ofNat 64 1))) .skip) (.return (.const (BitVec.ofNat 64 0)))
private def iter : ProgHOL 64 :=
  .dec (nm "ca") .one (byteAt "a") (.dec (nm "cb") .one (byteAt "b")
    (.seq (.ite (.cmp .notEqual (varE "ca") (varE "cb"))
      (retIf (.cmp .lower (varE "cb") (varE "ca"))) .skip)
      (.assign .local (nm "k") (.op .add [varE "k", .const (BitVec.ofNat 64 1)]))))
private def loop : ProgHOL 64 := .dec (nm "k") .one (.const (BitVec.ofNat 64 0))
  (.seq (.while (.cmp .less (varE "k") (varE "len")) iter) (.return (.const (BitVec.ofNat 64 0))))
private def choose : ProgHOL 64 := .ite (.cmp .equal (varE "kind") (.const (BitVec.ofNat 64 2)))
  (.assign .local (nm "len") (.const (BitVec.ofNat 64 32))) .skip
private def kindZero : ProgHOL 64 := .ite (.cmp .equal (varE "kind") (.const (BitVec.ofNat 64 0)))
  (retIf (.cmp .lower (.load .one (varE "b")) (.load .one (varE "a")))) .skip
def body : ProgHOL 64 := .seq kindZero (.dec (nm "len") .one (.const (BitVec.ofNat 64 20)) (.seq choose loop))

local macro "freeCode" : tactic => `(tactic|
  repeat' first | apply cost_dec | apply cost_seq (Bp := 0) (Bq := 0) |
    apply cost_ite (Ba := 0) (Bb := 0) | exact cost_skip | apply cost_assign | apply cost_return)

private theorem loop_cost (c : BitVec 64) (hc : c.toNat ≤ 32) :
    AcceptedLoopRules.CostP σ X (FourthCapturedSignedLoop.CountEq (varE "len") c) loop 32 := by
  refine FourthCapturedSignedLoop.cost_initialized_seq (B := 0) (Bt := 0) (M := 32)
    (by decide) (fun _ => hc) ?_ (stepsB_sound (nm "k") true iter (by decide)) (fun _ => rfl) ?_ ?_ (cost_return _)
  · unfold iter retIf
    freeCode
  · intro s hex
    exact keepsB_sound (nm "len") iter (by decide) s hex
  · intro s
    change (setVarHOLFinite (nm "k") (.val (.word 0)) s).locals.lookup (nm "len") =
      s.locals.lookup (nm "len")
    rw [lookup_setVar_eq, if_neg (by decide)]

private def Small (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ c : BitVec 64, s.locals.lookup (nm "len") = some (.val (.word c)) ∧ c.toNat ≤ 32

private theorem chosen :
    Hoare σ X Small choose (fun r t => r = none → Small t) := by
  apply InitECandidate.Solver.Spec.hoare_ite
  · apply InitECandidate.Solver.Spec.hoare_assign
    intro s hs hp v hv hvv _
    have he : v = .val (.word (BitVec.ofNat 64 32)) := by simpa only [ev_const, Option.some.injEq] using hv.symm
    subst v
    exact ⟨BitVec.ofNat 64 32, by simp [setVarHOLFinite, FUPDATE], by decide⟩
  · exact InitECandidate.Solver.Spec.hoare_skip (fun _ _ h _ => h.1)

theorem body_cost : Cost σ X body 32 := by
  unfold body
  refine cost_seq (Bp := 0) (Bq := 32) ?_ ?_
  · unfold kindZero retIf
    freeCode
  apply AcceptedLoopRules.cost_of_costP_true
  apply AcceptedLoopRules.costP_dec
  intro s hs hp v hv hshape
  have he : v = .val (.word (BitVec.ofNat 64 20)) := by simpa only [ev_const, Option.some.injEq] using hv.symm
  subst v
  apply AcceptedLoopRules.CostP.pre (P := Small)
  · refine AcceptedLoopRules.costP_seq (Ba := 0) (Bb := 32) (R := Small)
      (AcceptedLoopRules.costP_of_cost ?_) chosen ?_
    · unfold choose
      freeCode
    · intro t ht h g
      obtain ⟨c, hv, hc⟩ := h
      exact loop_cost c hc t ht hv g
  · rintro t ht rfl
    exact ⟨BitVec.ofNat 64 20, by simp [setVarHOLFinite, FUPDATE], by decide⟩

private def params : List (MlS × Flapjack.Pancake.PanLang.ShapeHOL) :=
  [(nm "a", .one), (nm "b", .one), (nm "kind", .one)]

private theorem actual_entry : AcceptedEcpMulIdentity.entry Guest.Software.guestFn_bal_sort_gt =
    (nm "bal_sort_gt", params, body, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

private theorem code_gt : guestCode (nm "bal_sort_gt") = some (params, body, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 429) (by decide))
    ⟨_, rfl⟩ actual_entry

theorem callee_cost : CalleeCost σ guestCtx (nm "bal_sort_gt") 32 := by
  intro vs actual callee rs lookup
  obtain ⟨ps, hc⟩ := InitECandidate.Solver.SourceCost.lookupCode_some lookup
  rw [guestCtx_code, code_gt] at hc
  have eq : actual = body := (congrArg (fun e => e.2.1) (Option.some.inj hc)).symm
  rw [eq]
  exact body_cost

#print axioms callee_cost
end SortCompare32
