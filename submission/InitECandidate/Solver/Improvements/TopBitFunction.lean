import InitECandidate.Solver.Improvements.TopBitReturn
import InitECandidate.Solver.Spec.Rlp

/-! Return bound for the installed unsigned scan in be_top_bit. -/
set_option autoImplicit false
set_option maxRecDepth 100000
namespace TopBitFunction
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ExpHOL ProgHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

private def condition : ExpHOL 64 := .cmp .lower (lv (nm "i")) (lv (nm "nbytes"))
private def step : ProgHOL 64 :=
  .dec (nm "b") .one (.loadByte (.op .add [lv (nm "p"), lv (nm "i")]))
    (.seq (.ite (.cmp .notEqual (lv (nm "b")) (cw 0))
      (.decCall (nm "bl") .one (nm "bit_length64") [lv (nm "b")] (.return TopBitReturn.expr)) .skip)
      (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))
private def body : ProgHOL 64 :=
  .dec (nm "i") .one (cw 0)
    (.seq (.while condition step) (.return (.op .sub [cw 0, cw 1])))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
private theorem entry : fnEntry Guest.Software.guestFn_be_top_bit =
    (nm "be_top_bit", [(nm "p", .one), (nm "nbytes", .one)], body, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

private theorem code : guestCode (nm "be_top_bit") =
    some ([(nm "p", .one), (nm "nbytes", .one)], body, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 629) (by decide)) ⟨_, rfl⟩ entry

def output (v : ValueHOL 64) : Prop := ∃ w : BitVec 64, v = .val (.word w) ∧ TopBitReturn.small w

private def index (n : BitVec 64) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  s.locals.lookup (nm "nbytes") = some (.val (.word n)) ∧
    ∃ i : BitVec 64, s.locals.lookup (nm "i") = some (.val (.word i))

private def branch (n : BitVec 64) (r : Option (PanSemResultExact 64)) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  (r = none ∧ index n s) ∨ ∃ v, r = some (.returned v) ∧ output v

private theorem bodyStep (hC : X.code.lookup = guestCode) {n : BitVec 64} (cap : n.toNat ≤ 1024) :
    Hoare σ X (fun s => index n s ∧ CondTrue s condition) step (branch n) := by
  unfold step
  refine hoare_dec fun s hs ⟨⟨hn,i,hi⟩,w,hw,hnz⟩ b _ _ => ?_
  obtain ⟨x,y,hx,hy,hxy⟩ := cmp_true (o := .lower) (a := lv (nm "i")) (b := lv (nm "nbytes")) hw hnz
  rw [AcceptedBitLengthReturn.ev_lw hi] at hx
  rw [AcceptedBitLengthReturn.ev_lw hn] at hy
  cases hx
  cases hy
  have lt : i.toNat < n.toNat := by
    simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, BitVec.lt_def] using hxy
  refine hoare_ite_skip_seq ?_ ?_
  · refine hoare_decCallS (AcceptedBitLengthReturn.funSpec_bit_length64_le hC)
      fun caller _ ⟨hc,_⟩ _ _ _ bl out hr _ _ => ?_
    subst caller
    obtain ⟨k,rfl,hk⟩ := hr _ rfl
    refine hoare_return fun t ht hinit val he => ?_
    subst t
    have hn' : (setVarHOLFinite (nm "bl") (.val (.word k))
          {out with locals := (setVarHOLFinite (nm "b") b s).locals}).locals.lookup (nm "nbytes") =
        some (.val (.word n)) := by
      rw [lk_set_ne _ _ (by decide)]
      change (setVarHOLFinite (nm "b") b s).locals.lookup (nm "nbytes") = _
      rw [lk_set_ne _ _ (by decide)]
      exact hn
    have hi' : (setVarHOLFinite (nm "bl") (.val (.word k))
          {out with locals := (setVarHOLFinite (nm "b") b s).locals}).locals.lookup (nm "i") =
        some (.val (.word i)) := by
      rw [lk_set_ne _ _ (by decide)]
      change (setVarHOLFinite (nm "b") b s).locals.lookup (nm "i") = _
      rw [lk_set_ne _ _ (by decide)]
      exact hi
    have hbl' : (setVarHOLFinite (nm "bl") (.val (.word k))
          {out with locals := (setVarHOLFinite (nm "b") b s).locals}).locals.lookup (nm "bl") =
        some (.val (.word k)) := lk_set_self _ _ _
    unfold TopBitReturn.expr at he
    rw [ev_sub2 (ev_add2 (ev_mul2 (ev_sub2 (ev_sub2 (AcceptedBitLengthReturn.ev_lw hn') (ev_cw _ 1))
      (AcceptedBitLengthReturn.ev_lw hi')) (ev_cw _ 8)) (AcceptedBitLengthReturn.ev_lw hbl'))
      (ev_cw _ 1)] at he
    cases he
    exact ⟨by simp, Or.inr ⟨_,rfl,_,rfl,TopBitReturn.arithmetic cap lt hk⟩⟩
  · refine hoare_assign fun t _ ⟨ht,_⟩ val he _ => ?_
    subst t
    have hi' : (setVarHOLFinite (nm "b") b s).locals.lookup (nm "i") = some (.val (.word i)) := by
      rw [lk_set_ne _ _ (by decide)]; exact hi
    rw [ev_add2 (AcceptedBitLengthReturn.ev_lw hi') (ev_cw _ 1)] at he
    cases he
    refine Or.inl ⟨rfl,?_,i+1,?_⟩
    · simp only [lookup_resVarEq_restore, if_neg (by decide : nm "nbytes" ≠ nm "b")]
      rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
      exact hn
    · simp only [lookup_resVarEq_restore, if_neg (by decide : nm "i" ≠ nm "b")]
      exact lk_set_self _ _ _

private theorem scan (hC : X.code.lookup = guestCode) {n : BitVec 64} (cap : n.toNat ≤ 1024) :
    Hoare σ X (index n) (.while condition step) (RetP output) := by
  refine hoare_while (fun _ h => h) ?_ (fun _ _ _ _ v h => by cases h)
  refine hoare_post (bodyStep hC cap) ?_
  intro r t _ _ h
  rcases h with ⟨rfl,hi⟩ | ⟨v,rfl,hv⟩
  · exact ⟨fun _ => hi, by simp, by simp, by simp⟩
  · refine ⟨by simp, by simp, by simp, ?_⟩
    rintro _ _ v' hv'
    cases hv'
    exact hv

private theorem bodyBound (hC : X.code.lookup = guestCode) {n : BitVec 64} (cap : n.toNat ≤ 1024) :
    Hoare σ X (fun s => s.locals.lookup (nm "nbytes") = some (.val (.word n))) body (RetP output) := by
  unfold body
  refine hoare_dec fun s _ hn v hv _ => ?_
  rw [ev_cw] at hv
  cases hv
  refine hoare_pre (hoare_seq (scan hC cap) (fun _ _ _ _ _ h => h) ?_) ?_
  · refine hoare_return fun t _ _ out he => ?_
    rw [ev_sub2 (ev_cw _ 0) (ev_cw _ 1)] at he
    cases he
    rintro val hval
    cases hval
    exact ⟨_,rfl,Or.inl rfl⟩
  · intro t _ ht
    subst t
    refine ⟨?_,0,lk_set_self _ _ _⟩
    rw [lk_set_ne _ _ (by decide)]; exact hn

theorem funSpec_bounded (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "be_top_bit") (fun vs _ r _ =>
      ∀ (p : ValueHOL 64) (n : BitVec 64), vs = [p,.val (.word n)] → n.toNat ≤ 1024 →
        ∀ v, r = .returned v → output v) := by
  intro vs actual callee rs hl s hs locals r hr p n args cap v ret
  subst vs
  subst r
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, hargs, -, -, -, hb⟩ := lookupCode_two code (by decide) hl
  simp only [List.cons.injEq, and_true] at hargs
  obtain ⟨rfl,rfl⟩ := hargs
  have hn : s.locals.lookup (nm "nbytes") = some (.val (.word n)) := by rw [locals]; exact hb
  have result := bodyBound hC cap s hs hn (by rw [hr]; trivial)
  rw [hr] at result
  exact result v rfl

#print axioms funSpec_bounded
end TopBitFunction
