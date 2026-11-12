import InitECandidate.Solver.Spec.RlpValidate

/-!
# `rlp_list_count` with a domain-size iteration bound

`funRet_rlp_item_total2`: `rlp_item_total(p, len)` returns `T` with `1 ≤ T ≤ len`, after a
domain hit at `p` (its header byte; `funRet_rlp_item_header2`).

So every completed iteration of `rlp_list_count`'s loop advances `off` by `T ≥ 1` from a
hit at `p + off`: the measure `cnt(p + off, len - off)` (`Spec/DomCount.lean`) drops, and
the loop runs at most `L + 9` iterations when the ordinary domain lies in a cyclic interval
of length `L` (`rlp_list_count_cost_dom`: `(L + 9) * (Btot + 2)`, against
`2 ^ 64 * (Btot + 2)` in `Spec/Rlp.lean`).
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type} {X : Ctx 64}

def TotRet2 (D : BitVec 64 → Prop) (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∃ P L T : BitVec 64, vs = [.val (.word P), .val (.word L)] ∧ v = .val (.word T) ∧
    1 ≤ T.toNat ∧ T.toNat ≤ L.toNat ∧ Hit D P

theorem funRet_rlp_item_total2 (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "rlp_item_total") (TotRet2 X.memaddrs) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA, hB, hla, hlb⟩ := lookupCode_two code_rlp_item_total (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hA
  obtain ⟨L, rfl⟩ := val_of_shapeEq_one hB
  refine hoare_conseq (P := fun s => s.locals.lookup (nm "p") = some (.val (.word P)) ∧
      s.locals.lookup (nm "len") = some (.val (.word L)))
    (Q := RetP (fun v => ∃ T : BitVec 64, v = .val (.word T) ∧ 1 ≤ T.toNat ∧ T.toNat ≤ L.toNat ∧
      Hit X.memaddrs P)) ?_ ?_ ?_
  · refine hoare_decCallS (funSpec_of_funRet (funRet_rlp_item_header2 hC)) ?_
    intro s _ ⟨hp, hl⟩ vs hvs callee v st hR _ _
    have hvs' : vs = [.val (.word P), .val (.word L)] := by
      rw [evs_cons (ev_lw hp) (evs_cons (ev_lw hl) evs_nil)] at hvs
      exact (Option.some.inj hvs).symm
    subst hvs'
    obtain ⟨P', L', heq, ⟨a, b, c, rfl, h1, h2, -⟩, hhit⟩ := hR v rfl
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at heq
    obtain ⟨rfl, rfl⟩ := heq
    refine hoare_pre (P := fun u => u.locals.lookup (nm "h") =
        some (.rStruct [.val (.word a), .val (.word b), .val (.word c)])) ?_ ?_
    · refine hoare_seq (R := fun r u => r = none ∧ u.locals.lookup (nm "h") =
          some (.rStruct [.val (.word a), .val (.word b), .val (.word c)])) ?_
        (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoare_ite ?_ ?_
        · exact hoare_callD (funSpec_true _) fun u _ ⟨hu, _⟩ _ _ _ _ _ _ _ => ⟨rfl, hu⟩
        · exact hoare_skip fun u _ ⟨hu, _⟩ => ⟨rfl, hu⟩
      · refine hoare_return fun u _ ⟨_, hu⟩ w hw => ?_
        have hfa : ev u (.rfield 0 (lv (nm "h"))) = some (.val (.word a)) := by
          rw [ev_rfield (by rw [ev_lv]; exact hu)]; rfl
        have hfb : ev u (.rfield 1 (lv (nm "h"))) = some (.val (.word b)) := by
          rw [ev_rfield (by rw [ev_lv]; exact hu)]; rfl
        rw [ev_add2 hfa hfb] at hw
        cases hw
        exact retP_returned _ ⟨a + b, rfl, by bv_omega, by bv_omega, hhit⟩
    · intro u _ hu
      subst hu
      exact lk_set_self _ _ _
  · intro s _ hs
    rw [hs]
    exact ⟨hla, hlb⟩
  · intro r t _ _ h v hv
    obtain ⟨T, rfl, h1, h2, h3⟩ := h v hv
    exact ⟨P, L, T, rfl, rfl, h1, h2, h3⟩

/-- Hits ahead of `p + off` within `[off, len)`. -/
noncomputable def cntMu (D : BitVec 64 → Prop) (s : PanSemStateFiniteExact 64 σ) : Nat :=
  cnt D (wl s (nm "p") + wl s (nm "off")) ((wl s (nm "len")).toNat - (wl s (nm "off")).toNat)

theorem countLoop_dec2 (hC : X.code.lookup = guestCode) (k : Nat) :
    Hoare σ X (fun s => True ∧ CondTrue s countCond ∧ cntMu X.memaddrs s = k) countLoopBody
      (fun r t => r = none ∨ r = some .continue → cntMu X.memaddrs t < k) := by
  refine hoare_decCallS (funSpec_of_funRet (funRet_rlp_item_total2 hC)) ?_
  intro s _ ⟨_, ⟨w, hw, hw0⟩, hk⟩ vs hvs callee v st hR _ _
  obtain ⟨O, Ln, hO, hLn, hlt⟩ := cmp_true hw hw0
  have hlt' := lower_true hlt
  rw [ev_lv] at hO hLn
  obtain ⟨V1, vs1, rfl, hV1, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨V2, vs2, rfl, hV2, -⟩ := evs_cons_inv hvs1
  rw [ev_sub2 (ev_lw hLn) (ev_lw hO)] at hV2
  cases hV2
  obtain ⟨P', L', T, heq, rfl, hT1, hT2, hhit⟩ := hR v rfl
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at heq
  obtain ⟨rfl, rfl, -⟩ := heq
  obtain ⟨Pp, O', hPp, hO', hP'⟩ := ev_add2_inv hV1
  rw [ev_lw hO] at hO'
  cases hO'
  subst hP'
  rw [ev_lv] at hPp
  have hk' : k = cnt X.memaddrs (Pp + O) (Ln.toNat - O.toNat) := by
    rw [← hk, cntMu, wl_of hPp, wl_of hO, wl_of hLn]
  have hT2' : T.toNat ≤ Ln.toNat - O.toNat := by
    rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; omega)] at hT2
    exact hT2
  refine hoare_pre (P := fun u => u.locals.lookup (nm "off") = some (.val (.word O)) ∧
      u.locals.lookup (nm "len") = some (.val (.word Ln)) ∧
      u.locals.lookup (nm "p") = some (.val (.word Pp)) ∧
      u.locals.lookup (nm "total") = some (.val (.word T))) ?_ ?_
  · refine hoare_seq (R := fun r u => r = none ∧
        u.locals.lookup (nm "off") = some (.val (.word (O + T))) ∧
        u.locals.lookup (nm "len") = some (.val (.word Ln)) ∧
        u.locals.lookup (nm "p") = some (.val (.word Pp))) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_assign fun u _ ⟨hu1, hu2, hu3, hu4⟩ x hx _ => ?_
      rw [ev_add2 (ev_lw hu1) (ev_lw hu4)] at hx
      cases hx
      refine ⟨rfl, lk_set_self _ _ _, ?_, ?_⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hu2
      · rw [lk_set_ne _ _ (by decide)]; exact hu3
    · refine hoare_assign fun u _ ⟨_, hu1, hu2, hu3⟩ x _ _ => ?_
      intro _
      have e : ∀ y, y ≠ nm "count" → y ≠ nm "total" →
          ({ (setVarHOLFinite (nm "count") x u) with
            locals := (setVarHOLFinite (nm "count") x u).locals.resVarEq
              (nm "total", (s.locals).lookup (nm "total")) } :
              PanSemStateFiniteExact 64 σ).locals.lookup y = u.locals.lookup y := by
        intro y h1 h2
        show ((setVarHOLFinite (nm "count") x u).locals.resVarEq _).lookup _ = _
        rw [lookup_resVarEq_ne _ _ (Ne.symm h2), lk_set_ne _ _ (Ne.symm h1)]
      unfold cntMu
      rw [wl_of ((e _ (by decide) (by decide)).trans hu1),
        wl_of ((e _ (by decide) (by decide)).trans hu2),
        wl_of ((e _ (by decide) (by decide)).trans hu3), hk']
      have hOT : (O + T).toNat = O.toNat + T.toNat := by
        rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by have := Ln.isLt; omega)]
      have hstep := cnt_step (D := X.memaddrs) (base := Pp + O) (n := Ln.toNat - O.toNat)
        hhit hT1 hT2'
      rw [ofNat_toNat'] at hstep
      rw [hOT, show Ln.toNat - (O.toNat + T.toNat) = Ln.toNat - O.toNat - T.toNat by omega,
        ← BitVec.add_assoc]
      omega
  · intro u _ hu
    subst hu
    refine ⟨?_, ?_, ?_, lk_set_self _ _ _⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hO
    · rw [lk_set_ne _ _ (by decide)]; exact hLn
    · rw [lk_set_ne _ _ (by decide)]; exact hPp

/-- **Tick bound of `rlp_list_count`** when the ordinary domain lies in a cyclic interval of
length `L`, given a cost bound `Btot` of `rlp_item_total`. -/
theorem rlp_list_count_cost_dom (hC : X.code.lookup = guestCode) {lo : BitVec 64} {L : Nat}
    (hD : DomIn X.memaddrs lo L) (hL : L + 8 ≤ 2 ^ 64) {Btot : Nat}
    (htot : CalleeCost σ X (nm "rlp_item_total") Btot) :
    CalleeCost σ X (nm "rlp_list_count") ((L + 9) * (Btot + 2)) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_two code_rlp_list_count (by decide) hl
  have H := hdec_of_hoare (σ := σ) (X := X) (c := countCond) (body := countLoopBody)
    (cntMu X.memaddrs) (fun _ => True) (fun _ => rfl) (fun _ h => h) (countLoop_dec2 hC)
  have hw := cost_while (σ := σ) (X := X) (c := countCond) (cntMu X.memaddrs) (L + 8)
    (cost_decCall htot (cost_seq (cost_assign _ _ _) (cost_assign _ _ _)))
    (fun s _ _ => cnt_le hD hL _ (Nat.le_trans (Nat.sub_le _ _) (Nat.le_of_lt (BitVec.isLt _))))
    (fun s hs hc _ hexit => H s hs hc trivial hexit)
  refine (cost_dec (cost_dec (cost_seq hw (cost_return _)))).mono (le_of_eq ?_)
  rw [Nat.add_zero, show L + 8 + 1 = L + 9 by omega, show 1 + Btot + (0 + 0) + 1 = Btot + 2 by omega]

end InitECandidate.Solver.Spec
