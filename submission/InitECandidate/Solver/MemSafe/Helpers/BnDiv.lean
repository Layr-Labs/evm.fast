import InitECandidate.Solver.MemSafe.Helpers.Divmnu

set_option autoImplicit false

/-!
# `bn_divmnu` (Knuth D on 32-bit digits, caller-supplied workspace; the modexp version)

`bn_divmnu(q, r, u, m, v, n, un, vn)` is `divmnu` with the normalisation buffers passed in:
for `n = 1` the same path (`dvP1`), for `n ≥ 2` the same quotient code (`dvK`) with `un`
(`m + 1` digits) and `vn` (`n` digits) as parameters.

* `foot_bn_divmnu`: the footprint `q[0, m)`, `r[0, n)`, `un[0, m + 1)`, `vn[0, n)`, when `n ≥ 1`,
  `n ≤ m` for `n ≥ 2`, and the buffers end below `scratchEnd`.
* `sumSpec_bn_divmnu`: the `SumSpec` for `[q: 8 m, r: 8 n, -, -, -, -, un: 8 m + 8, vn: 8 n]`
  (`grows := false`) with the precondition `n ≥ 1 ∧ (n ≥ 2 → n ≤ m)`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Helpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def bnDivBody : ProgHOL 64 :=
  .dec (nm "i") .one (cw 0) (.dec (nm "j") .one (cw 0)
    (.seq (.ite (.cmp .equal (lv (nm "n")) (cw 1)) dvP1 .skip)
      (.decCall (nm "s") .one (nm "nlz32") [.load .one (ixA "v" (.op .sub [lv (nm "n"), cw 1]))]
        dvK)))

def bnDivParams : List (MlS × ShapeHOL) :=
  [(nm "q", .one), (nm "r", .one), (nm "u", .one), (nm "m", .one), (nm "v", .one), (nm "n", .one),
    (nm "un", .one), (nm "vn", .one)]

theorem entry_bn_divmnu : fnEntry Guest.Software.guestFn_bn_divmnu =
    (nm "bn_divmnu", bnDivParams, bnDivBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_bn_divmnu : guestCode (nm "bn_divmnu") = some (bnDivParams, bnDivBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 627) (by decide)) ⟨_, rfl⟩
    entry_bn_divmnu

def BnDivPre (vs : List (ValueHOL 64)) : Prop :=
  ∃ Q Rr M N UN VN : BitVec 64, argW vs 0 = some Q ∧ argW vs 1 = some Rr ∧
    argW vs 3 = some M ∧ argW vs 5 = some N ∧ argW vs 6 = some UN ∧ argW vs 7 = some VN ∧
    1 ≤ N.toNat ∧
    (N.toNat = 1 → (M.toNat = 0 ∨ Q.toNat + 8 * M.toNat ≤ scratchEnd) ∧
      Rr.toNat + 8 ≤ scratchEnd) ∧
    (2 ≤ N.toNat → DvB Q Rr M N UN VN)

def BnDivR (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ Q Rr M N UN VN : BitVec 64, argW vs 0 = some Q ∧ argW vs 1 = some Rr ∧
    argW vs 3 = some M ∧ argW vs 5 = some N ∧ argW vs 6 = some UN ∧ argW vs 7 = some VN ∧
    DvR Q Rr M N UN VN a

theorem foot_bn_divmnu (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpec σ X (nm "bn_divmnu") BnDivPre BnDivR := by
  refine footSpec_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, Cu, D, E, F, G, H, rfl, hA', hB', -, hD', -, hF', hG', hH', hla, hlb, -,
    hld, -, hlf, hlg, hlh⟩ := lookupCode_eight code_bn_divmnu (by decide) hl
  obtain ⟨Q, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨Rr, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨M, rfl⟩ := val_of_shapeEq_one hD'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hF'
  obtain ⟨UN, rfl⟩ := val_of_shapeEq_one hG'
  obtain ⟨VN, rfl⟩ := val_of_shapeEq_one hH'
  obtain ⟨Q', Rr', M', N', UN', VN', hQ, hR, hM, hN, hU, hV, hN1, h1, h2⟩ := hP
  cases hQ; cases hR; cases hM; cases hN; cases hU; cases hV
  let Rf := DvR Q Rr M N UN VN
  let L0 := DvK Q Rr M N UN VN
  refine hoareG_conseq (P := LPre Rf s0 L0) (Q := LP Rf s0 (fun _ => True)) ?_ ?_
    fun _ _ _ _ h => ⟨h.1.1, h.1.2.mono fun a ha =>
      ⟨Q, Rr, M, N, UN, VN, rfl, rfl, rfl, rfl, rfl, rfl, ha⟩⟩
  rotate_left
  · intro t _ ht
    subst t
    exact lpre_init (by rw [hloc]; exact ⟨hla, hlb, hld, hlf, hlg, hlh⟩)
  refine hoareG_decL (L' := fun _ _ => True) (Lout := fun _ => True) (fun s _ hL v _ _ => ?_)
    (fun _ _ _ _ => trivial)
  refine hoareG_preL (L' := L0) ?_ fun m hm => hm ▸ dvK_upd _ (by decide) hL
  refine hoareG_decL (L' := fun _ _ => True) (Lout := fun _ => True) (fun s _ hL v _ _ => ?_)
    (fun _ _ _ _ => trivial)
  refine hoareG_preL (L' := L0) ?_ fun m hm => hm ▸ dvK_upd _ (by decide) hL
  refine hoareG_seqL (L2 := fun m => L0 m ∧ N.toNat ≠ 1) ?_ ?_
  · refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨⟨hL, hbw⟩, hc⟩ => ⟨hbw, fun _ => ⟨hL, ?_⟩,
      fun _ h => nomatch h⟩)
    · intro t ht ⟨hpre, w, hw, hw0⟩
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lw hpre.1.2.2.2.1] at hx
      cases hx
      rw [ev_cw] at hy
      cases hy
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, beq_iff_eq] at hxy
      subst hxy
      have hN : (BitVec.ofNat 64 1).toNat = 1 := rfl
      exact hoareG_dvP1 hA hC (h1 hN).1 (h1 hN).2 (fun a h => dvR_q h)
        (fun a h => dvR_r (by rw [hN]; exact h)) t ht
        ⟨⟨hpre.1.1, hpre.1.2.1, hpre.1.2.2.1⟩, hpre.2⟩
    · obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_lw hL.2.2.2.1] at hx
      cases hx
      rw [ev_cw] at hy
      cases hy
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, beq_eq_false_iff_ne] at hxy
      intro h
      exact hxy (BitVec.eq_of_toNat_eq (by rw [h]; rfl))
  refine hoareG_decCallFoot (L' := fun _ _ => True) (Lout := fun _ => True)
    (footRet_of_foot (pureSpec_nlz32 hC).foot) (fun _ _ _ _ _ => ⟨trivial, fun _ h => h.elim⟩)
    ?_ (fun _ _ _ _ => trivial)
  intro s _ v _ hL _ _ _
  have hB := h2 (by have := hL.2; omega)
  exact hoareG_preL (L' := L0) (hoareG_dvK hA hC hB) fun m hm => hm ▸ dvK_upd _ (by decide) hL.1

def sigBnDivmnu : Sig :=
  { params := [.bufArg 3 8 0, .bufArg 5 8 0, .any, .any, .any, .any, .bufArg 3 8 8, .bufArg 5 8 0],
    grows := false }

def BnDivPreS (vs : List (ValueHOL 64)) (_ : State σ) (_ : Gam) : Prop :=
  ∀ M N : BitVec 64, argW vs 3 = some M → argW vs 5 = some N → 1 ≤ N.toNat ∧
    (2 ≤ N.toNat → N.toNat ≤ M.toNat)

theorem argBuf_of' {C : Cfg} {Γ : Gam} {p : Ptrs} {ps : List PT} {vs : List (ValueHOL 64)}
    {i j c d : Nat} (hps : ps[i]? = some (.bufArg j c d)) (hA : ArgsOK C Γ p ps vs) :
    ∃ D N : BitVec 64, argW vs i = some D ∧ argW vs j = some N ∧
      BufOK C Γ p D.toNat (c * N.toNat + d) := by
  have hlen : i < vs.length := by
    rw [← hA.1]
    exact (List.getElem?_eq_some_iff.mp hps).1
  obtain ⟨v, hv⟩ : ∃ v, vs[i]? = some v := ⟨_, List.getElem?_eq_getElem hlen⟩
  obtain ⟨w, x, hw, hx, hb⟩ := hA.2 i _ v hps hv
  exact ⟨w, x, by rw [argW, hv]; exact hw, hx, hb⟩

theorem sumSpec_bn_divmnu {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    SumSpec σ X C H (nm "bn_divmnu") sigBnDivmnu BnDivPreS (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) := by
  refine sumSpec_of_footS (Pre := fun vs _ => BnDivPre vs) (R := fun vs _ => BnDivR vs) hH hT rfl
    (foot_bn_divmnu hC hA) ?_ ?_
  · intro Γ p vs s hG hp hA' hPS
    obtain ⟨p0, hp0, hord, hL, -⟩ := hG
    rw [hp] at hp0
    cases hp0
    obtain ⟨Q, M, hQ, hM, hbq⟩ := argBuf_of' (i := 0) (j := 3) (c := 8) (d := 0) rfl hA'
    obtain ⟨Rr, N, hR, hN, hbr⟩ := argBuf_of' (i := 1) (j := 5) (c := 8) (d := 0) rfl hA'
    obtain ⟨UN, M', hU, hM', hbu⟩ := argBuf_of' (i := 6) (j := 3) (c := 8) (d := 8) rfl hA'
    obtain ⟨VN, N', hV, hN', hbv⟩ := argBuf_of' (i := 7) (j := 5) (c := 8) (d := 0) rfl hA'
    rw [hM] at hM'; cases hM'
    rw [hN] at hN'; cases hN'
    obtain ⟨h1, h2⟩ := hPS M N hM hN
    have bq := bufOK_bound hord hL Q.isLt hbq
    have br := bufOK_bound hord hL Rr.isLt hbr
    have bu := bufOK_bound hord hL UN.isLt hbu
    have bv := bufOK_bound hord hL VN.isLt hbv
    refine ⟨Q, Rr, M, N, UN, VN, hQ, hR, hM, hN, hU, hV, h1, fun hn1 => ⟨?_, ?_⟩, fun hn2 => ?_⟩
    · rcases bq with h | h
      · left; omega
      · right; simpa using h
    · rcases br with h | h <;> omega
    · exact ⟨hn2, h2 hn2, by rcases bu with h | h <;> omega, by rcases bv with h | h <;> omega,
        by rcases bq with h | h <;> omega, by rcases br with h | h <;> omega⟩
  · intro Γ p vs s a _ _ _ _ ⟨Q, Rr, M, N, UN, VN, hQ, hR, hM, hN, hU, hV, hdv⟩
    refine Or.inl ?_
    rcases hdv with h | h | h | h
    · exact ⟨0, Q, hQ, Or.inr ⟨3, 8, 0, M, rfl, hM, by simpa using h⟩⟩
    · exact ⟨1, Rr, hR, Or.inr ⟨5, 8, 0, N, rfl, hN, by simpa using h⟩⟩
    · exact ⟨6, UN, hU, Or.inr ⟨3, 8, 8, M, rfl, hM, by
        unfold Overlap at h ⊢; omega⟩⟩
    · exact ⟨7, VN, hV, Or.inr ⟨5, 8, 0, N, rfl, hN, by simpa using h⟩⟩

end InitECandidate.Solver.MemSafe.Helpers
