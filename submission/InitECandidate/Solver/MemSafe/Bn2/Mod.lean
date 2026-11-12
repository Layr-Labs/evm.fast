import InitECandidate.Solver.MemSafe.Helpers.BnDiv
import InitECandidate.Solver.MemSafe.Helpers.Digits
import InitECandidate.Solver.MemSafe.Helpers.DigitsDiv
import InitECandidate.Solver.MemSafe.Helpers.Seq
import InitECandidate.Solver.MemSafe.Helpers.GuestTypes
import InitECandidate.Solver.MemSafe.WaveHelpers.Common
import InitECandidate.Solver.MemSafe.Bn2.Util
import InitECandidate.Solver.MemSafe.Bn2.MulCode
import InitECandidate.Solver.MemSafe.Fold
import InitECandidate.Solver.MemSafe.Wire.Guest

set_option autoImplicit false

/-!
# `bn_mod`

```
fun 1 bn_mod(1 u, 1 m, 1 v, 1 n, 1 r, 1 q, 1 un, 1 vn) {
  var 1 mm = digits_len(u, m);
  if mm <+ n { memcpy(r, u, mm * 8); memzero(r + mm * 8, (n - mm) * 8); return 0; }
  bn_divmnu(q, r, u, mm, v, n, un, vn);
  return 0; }
```

Footprint: `r[0, 8n)`, `q[0, 8m)`, `un[0, 8m + 8)`, `vn[0, 8n)` (`mm <= m`, so the `bn_divmnu`
buffers sized by `mm` lie inside those sized by `m`).

* `bnModSig = [any, any, any, any, bufArg 3 8 0, bufArg 1 8 0, bufArg 1 8 8, bufArg 3 8 0]`,
  `grows := false`.
* `Pre` (`BnModPre`): `n >= 1`. (For `n = 0` the call to `bn_divmnu` is outside its domain.)
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Bn2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

/-! ## The code -/

def modBody : ProgHOL 64 :=
  .decCall (nm "mm") .one (nm "digits_len") [lv (nm "u"), lv (nm "m")]
    (.seq
      (.ite (ltN (nm "mm") (nm "n"))
        (.seq (.call (some (none, none)) (nm "memcpy")
            [lv (nm "r"), lv (nm "u"), .panop .mul [lv (nm "mm"), cw 8]])
          (.seq (.call (some (none, none)) (nm "memzero")
              [.op .add [lv (nm "r"), .panop .mul [lv (nm "mm"), cw 8]],
                .panop .mul [.op .sub [lv (nm "n"), lv (nm "mm")], cw 8]])
            (.return (cw 0))))
        .skip)
      (.seq (.call (some (none, none)) (nm "bn_divmnu")
          [lv (nm "q"), lv (nm "r"), lv (nm "u"), lv (nm "mm"), lv (nm "v"), lv (nm "n"),
            lv (nm "un"), lv (nm "vn")])
        (.return (cw 0))))

def modPs : List (MlS × ShapeHOL) :=
  [(nm "u", .one), (nm "m", .one), (nm "v", .one), (nm "n", .one), (nm "r", .one),
    (nm "q", .one), (nm "un", .one), (nm "vn", .one)]

theorem entry_bn_mod : fnEntry Guest.Software.guestFn_bn_mod =
    (nm "bn_mod", modPs, modBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_bn_mod : guestCode (nm "bn_mod") = some (modPs, modBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 628) (by decide)) ⟨_, rfl⟩
    entry_bn_mod

/-! ## Invariants -/

def MK (U M V N R Q UN VN : BitVec 64) (m : Locals) : Prop :=
  LkW m "u" U ∧ LkW m "m" M ∧ LkW m "v" V ∧ LkW m "n" N ∧ LkW m "r" R ∧ LkW m "q" Q ∧
    LkW m "un" UN ∧ LkW m "vn" VN

def MKm (U M V N R Q UN VN MM : BitVec 64) (m : Locals) : Prop :=
  MK U M V N R Q UN VN m ∧ LkW m "mm" MM

theorem MK.upd {U M V N R Q UN VN : BitVec 64} {m : Locals} {y : String} {v : ValueHOL 64}
    (h : MK U M V N R Q UN VN m) (hy : y = "mm") : MK U M V N R Q UN VN (m.update (nm y, v)) := by
  subst hy
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8⟩ := h
  exact ⟨h1.upd (by decide), h2.upd (by decide), h3.upd (by decide), h4.upd (by decide),
    h5.upd (by decide), h6.upd (by decide), h7.upd (by decide), h8.upd (by decide)⟩

/-- The side conditions on the argument words. -/
structure ModB (R Q UN VN M N : BitVec 64) : Prop where
  hn : 1 ≤ N.toNat
  hr : R.toNat + 8 * N.toNat ≤ scratchEnd
  hv : VN.toNat + 8 * N.toNat ≤ scratchEnd
  hu : UN.toNat + 8 * M.toNat + 8 ≤ scratchEnd
  hq : M.toNat = 0 ∨ Q.toNat + 8 * M.toNat ≤ scratchEnd

def ModPreF (vs : List (ValueHOL 64)) : Prop :=
  ∀ U M V N R Q UN VN : BitVec 64, argW vs 0 = some U → argW vs 1 = some M → argW vs 2 = some V →
    argW vs 3 = some N → argW vs 4 = some R → argW vs 5 = some Q → argW vs 6 = some UN →
    argW vs 7 = some VN → ModB R Q UN VN M N

def RfMod (R Q UN VN M N : BitVec 64) (a : BitVec 64) : Prop :=
  Overlap R.toNat (8 * N.toNat) a ∨ Overlap Q.toNat (8 * M.toNat) a ∨
    Overlap UN.toNat (8 * M.toNat + 8) a ∨ Overlap VN.toNat (8 * N.toNat) a

def ModRF (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ M N R Q UN VN : BitVec 64, argW vs 1 = some M ∧ argW vs 3 = some N ∧ argW vs 4 = some R ∧
    argW vs 5 = some Q ∧ argW vs 6 = some UN ∧ argW vs 7 = some VN ∧ RfMod R Q UN VN M N a

theorem toNat_mul8 {I : BitVec 64} (h : I.toNat * 8 < 2 ^ 64) :
    (I * BitVec.ofNat 64 8).toNat = I.toNat * 8 := by
  rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8) (by decide),
    Nat.mod_eq_of_lt h]

theorem toNat_sub_le {x y : BitVec 64} (h : y.toNat ≤ x.toNat) : (x - y).toNat = x.toNat - y.toNat :=
  BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; exact h)

theorem ltN_false {t : State σ} {n i : MlS} {N I : BitVec 64}
    (hn : t.locals.lookup n = some (.val (.word N))) (hi : t.locals.lookup i = some (.val (.word I)))
    (hc : ev t (ltN i n) = some (.val (.word 0))) : N.toNat ≤ I.toNat := by
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
  rw [ev_lw hi] at hx
  cases hx
  rw [ev_lw hn] at hy
  cases hy
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, decide_eq_false_iff_not,
    BitVec.lt_def] at hxy
  omega

/-- The body of `bn_mod`. -/
theorem hoareG_modBody (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    {U M V N R Qq UN VN : BitVec 64} {s0 : State σ}
    (hF : MK U M V N R Qq UN VN s0.locals) (hb : ModB R Qq UN VN M N) :
    HoareG σ X (fun t => t = s0) modBody
      (fun _ t => BWPost (RfMod R Qq UN VN M N) s0 t) := by
  have hse : scratchEnd < 2 ^ 32 := by decide
  have hRN := hb.hr
  have hN1 := hb.hn
  have hvv := hb.hv
  have huu := hb.hu
  refine hoareG_conseq (P := LPre (RfMod R Qq UN VN M N) s0 (MK U M V N R Qq UN VN))
    (Q := LQ (RfMod R Qq UN VN M N) s0 (fun _ => True) (fun _ => True)) ?_ ?_
    (fun r t _ _ h => h.1)
  · unfold modBody
    refine hoareG_decCallRO (funSpec_digits_len hC) (L' := fun _ _ => True)
      (Lout := fun _ => True) (fun s h => h.2) ?_ (fun _ _ _ _ => trivial)
    intro s vs v _ hpre hvs hret _
    obtain ⟨hu, hm, hv, hn, hr, hq, hun, hvn⟩ := hpre.1
    rw [evs_cons (ev_lw hu) (evs_cons (ev_lw hm) evs_nil)] at hvs
    cases hvs
    obtain ⟨MM, rfl, hMM, -⟩ := hret _ _ rfl
    refine hoareG_preL (L' := MKm U M V N R Qq UN VN MM) ?_
      (fun m hm' => hm' ▸ ⟨hpre.1.upd rfl, LkW.self _ _ _⟩)
    refine hoareG_seqL (L2 := fun m => MKm U M V N R Qq UN VN MM m ∧ N.toNat ≤ MM.toNat) ?_ ?_
    · refine hoareG_ite ?_ ?_
      · refine hoareG_pre (P := LPre (RfMod R Qq UN VN M N) s0
          (fun m => MKm U M V N R Qq UN VN MM m ∧ MM.toNat < N.toNat)) ?_ ?_
        · refine hoareG_seqL (L2 := fun m => MKm U M V N R Qq UN VN MM m ∧ MM.toNat < N.toNat) ?_
            (hoareG_seqL (L2 := fun m => MKm U M V N R Qq UN VN MM m ∧ MM.toNat < N.toNat) ?_
              hoareG_returnL)
          · refine hoareG_callFoot (foot_memcpy hC hA) ?_
            intro s' _ hpre' vs' hvs'
            obtain ⟨⟨⟨hu', hm', hv', hn', hr', hq', hun', hvn'⟩, hmm'⟩, hlt⟩ := hpre'.1
            rw [evs_cons (ev_lw hr') (evs_cons (ev_lw hu')
              (evs_cons (ev_mul2 (ev_lw hmm') (ev_cw _ 8)) evs_nil))] at hvs'
            cases hvs'
            have h8 := toNat_mul8 (I := MM) (by omega)
            refine ⟨⟨R, MM * BitVec.ofNat 64 8, rfl, rfl, Or.inr (by rw [h8]; omega)⟩, ?_⟩
            rintro a ⟨D, N', hD, hN', hov⟩
            cases hD
            cases hN'
            exact Or.inl (overlap_mono hov (Nat.le_refl _) (by rw [h8]; omega))
          · refine hoareG_callFoot (foot_memzero hC hA) ?_
            intro s' _ hpre' vs' hvs'
            obtain ⟨⟨⟨hu', hm', hv', hn', hr', hq', hun', hvn'⟩, hmm'⟩, hlt⟩ := hpre'.1
            rw [evs_cons (ev_add2 (ev_lw hr') (ev_mul2 (ev_lw hmm') (ev_cw _ 8)))
              (evs_cons (ev_mul2 (ev_sub2 (ev_lw hn') (ev_lw hmm')) (ev_cw _ 8)) evs_nil)] at hvs'
            cases hvs'
            have h8 := toNat_mul8 (I := MM) (by omega)
            have hs := toNat_sub_le (x := N) (y := MM) (by omega)
            have h8' := toNat_mul8 (I := N - MM) (by omega)
            have hb8 : (R + MM * BitVec.ofNat 64 8).toNat = R.toNat + 8 * MM.toNat := by
              rw [toNat_add2 (by rw [h8]; omega), h8]; omega
            refine ⟨⟨R + MM * BitVec.ofNat 64 8, (N - MM) * BitVec.ofNat 64 8, rfl, rfl,
              Or.inr (by rw [hb8, h8', hs]; omega)⟩, ?_⟩
            rintro a ⟨D, N', hD, hN', hov⟩
            cases hD
            cases hN'
            exact Or.inl (overlap_mono hov (by rw [hb8]; omega) (by rw [hb8, h8', hs]; omega))
        · intro t _ ⟨⟨⟨hK, hmm⟩, hbw⟩, w, hw, hw0⟩
          exact ⟨⟨⟨hK, hmm⟩, ltN_true hK.2.2.2.1 hmm ⟨w, hw, hw0⟩⟩, hbw⟩
      · exact hoareG_skip fun t _ ⟨⟨⟨hK, hmm⟩, hbw⟩, hc⟩ =>
          ⟨hbw, fun _ => ⟨⟨hK, hmm⟩, ltN_false hK.2.2.2.1 hmm hc⟩, fun _ h => nomatch h⟩
    · refine hoareG_seqL (L2 := fun m => MKm U M V N R Qq UN VN MM m ∧ N.toNat ≤ MM.toNat) ?_
        hoareG_returnL
      refine hoareG_callFoot (foot_bn_divmnu hC hA) ?_
      intro s' _ hpre' vs' hvs'
      obtain ⟨⟨⟨hu', hm', hv', hn', hr', hq', hun', hvn'⟩, hmm'⟩, hNM⟩ := hpre'.1
      rw [evs_cons (ev_lw hq') (evs_cons (ev_lw hr') (evs_cons (ev_lw hu') (evs_cons (ev_lw hmm')
        (evs_cons (ev_lw hv') (evs_cons (ev_lw hn') (evs_cons (ev_lw hun')
        (evs_cons (ev_lw hvn') evs_nil)))))))] at hvs'
      cases hvs'
      refine ⟨⟨Qq, R, MM, N, UN, VN, rfl, rfl, rfl, rfl, rfl, rfl, hN1, fun hN1' => ⟨?_, ?_⟩,
        fun hN2 => ⟨hN2, hNM, ?_, ?_, ?_, ?_⟩⟩, ?_⟩
      · rcases hb.hq with h | h
        · left; omega
        · right; omega
      · omega
      · have := hb.hu; omega
      · omega
      · rcases hb.hq with h | h <;> omega
      · omega
      · rintro a ⟨Q', R', M', N', UN', VN', hQ, hR, hM, hN, hU, hV, hdv⟩
        cases hQ; cases hR; cases hM; cases hN; cases hU; cases hV
        rcases hdv with h | h | h | h
        · exact Or.inr (Or.inl (overlap_mono h (Nat.le_refl _) (by omega)))
        · exact Or.inl h
        · exact Or.inr (Or.inr (Or.inl (overlap_mono h (Nat.le_refl _) (by omega))))
        · exact Or.inr (Or.inr (Or.inr h))
  · intro t _ ht
    subst ht
    exact ⟨hF, rfl, fun _ _ => rfl⟩

theorem foot_bn_mod (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpec σ X (nm "bn_mod") ModPreF ModRF := by
  refine footSpec_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, Cc, D, E, F, G, H, rfl, hA', hB', hC', hD', hE', hF', hG', hH', hla, hlb,
    hlc, hld, hle, hlf, hlg, hlh⟩ := lookupCode_eight code_bn_mod (by decide) hl
  obtain ⟨U, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨M, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨V, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hD'
  obtain ⟨R, rfl⟩ := val_of_shapeEq_one hE'
  obtain ⟨Qq, rfl⟩ := val_of_shapeEq_one hF'
  obtain ⟨UN, rfl⟩ := val_of_shapeEq_one hG'
  obtain ⟨VN, rfl⟩ := val_of_shapeEq_one hH'
  have hb : ModB R Qq UN VN M N := hP U M V N R Qq UN VN rfl rfl rfl rfl rfl rfl rfl rfl
  have hF : MK U M V N R Qq UN VN s0.locals := by
    rw [hloc]
    exact ⟨hla, hlb, hlc, hld, hle, hlf, hlg, hlh⟩
  refine hoareG_conseq (hoareG_modBody hC hA hF hb) (fun t _ ht => ht) ?_
  intro r t _ _ h
  exact ⟨h.1, h.2.mono fun a ha => ⟨M, N, R, Qq, UN, VN, rfl, rfl, rfl, rfl, rfl, rfl, ha⟩⟩

def bnModSig : Sig :=
  { params := [.any, .any, .any, .any, .bufArg 3 8 0, .bufArg 1 8 0, .bufArg 1 8 8, .bufArg 3 8 0],
    grows := false }

/-- The caller obligation: `n >= 1`. -/
def BnModPre (vs : List (ValueHOL 64)) (_ : State σ) (_ : Gam) : Prop :=
  ∀ N : BitVec 64, argW vs 3 = some N → 1 ≤ N.toNat

theorem sumSpec_bn_mod_core {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    SumSpec σ X C H (nm "bn_mod") bnModSig BnModPre (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) := by
  refine sumSpec_of_footS (Pre := fun vs _ => ModPreF vs) (R := fun vs _ => ModRF vs) hH hT rfl
    ((foot_bn_mod hC hA).mono fun _ _ _ _ h hg hP => h hg hP) ?_ ?_
  · intro Γ p vs s hG hp hA' hPS U M V N R Qq UN VN hU hM hV hN hR hQ hUN hVN
    obtain ⟨p0, hp0, hord, hL, -⟩ := hG
    rw [hp] at hp0
    cases hp0
    obtain ⟨R', N', hR', hN', hbr⟩ := argBuf_of' (i := 4) (j := 3) (c := 8) (d := 0) rfl hA'
    obtain ⟨Q', M', hQ', hM', hbq⟩ := argBuf_of' (i := 5) (j := 1) (c := 8) (d := 0) rfl hA'
    obtain ⟨UN', M'', hUN', hM'', hbu⟩ := argBuf_of' (i := 6) (j := 1) (c := 8) (d := 8) rfl hA'
    obtain ⟨VN', N'', hVN', hN'', hbv⟩ := argBuf_of' (i := 7) (j := 3) (c := 8) (d := 0) rfl hA'
    rw [hR] at hR'; cases hR'
    rw [hN] at hN'; cases hN'
    rw [hQ] at hQ'; cases hQ'
    rw [hM] at hM'; cases hM'
    rw [hUN] at hUN'; cases hUN'
    rw [hVN] at hVN'; cases hVN'
    rw [hM] at hM''; cases hM''
    rw [hN] at hN''; cases hN''
    have br := Helpers.bufOK_bound hord hL R.isLt hbr
    have bq := Helpers.bufOK_bound hord hL Qq.isLt hbq
    have bu := Helpers.bufOK_bound hord hL UN.isLt hbu
    have bv := Helpers.bufOK_bound hord hL VN.isLt hbv
    have hn1 := hPS N hN
    refine ⟨hn1, ?_, ?_, ?_, ?_⟩
    · rcases br with h | h <;> omega
    · rcases bv with h | h <;> omega
    · rcases bu with h | h <;> omega
    · rcases bq with h | h
      · left; omega
      · right; omega
  · intro Γ p vs s a _ _ hA' _ ⟨M, N, R, Qq, UN, VN, hM, hN, hR, hQ, hUN, hVN, hov⟩
    refine Or.inl ?_
    rcases hov with h | h | h | h
    · exact argCells_bufArg_at (i := 4) (j := 3) (c := 8) (d := 0) rfl hR hN (by simpa using h)
    · exact argCells_bufArg_at (i := 5) (j := 1) (c := 8) (d := 0) rfl hQ hM (by simpa using h)
    · exact argCells_bufArg_at (i := 6) (j := 1) (c := 8) (d := 8) rfl hUN hM h
    · exact argCells_bufArg_at (i := 7) (j := 3) (c := 8) (d := 0) rfl hVN hN (by simpa using h)

theorem sumSpec_bn_mod {H : Hooks σ} (hF : FoldOK σ X Types.guestC H) :
    SumSpecA σ X Types.guestC H (nm "bn_mod") bnModSig BnModPre (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) :=
  sumSpecA_of_sumSpec (sumSpec_bn_mod_core hF.hH tagSlots_guestC hF.hX hF.hal)

theorem sumSpec_bn_mod_guestJL :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "bn_mod") bnModSig
      BnModPre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpec_bn_mod Wire.foldOK_guestJL

end InitECandidate.Solver.MemSafe.Bn2

#print axioms InitECandidate.Solver.MemSafe.Bn2.sumSpec_bn_mod
#print axioms InitECandidate.Solver.MemSafe.Bn2.sumSpec_bn_mod_guestJL
