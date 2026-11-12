import InitECandidate.Solver.Spec.Rlp
import InitECandidate.Solver.Spec.DomCount

/-!
# A stronger return specification of `rlp_item_header`

`funRet_rlp_item_header2`: `rlp_item_header(p, len)` returns `<h0, h1, kind>` with
`1 ≤ h0 + h1 ≤ len` (as in `Spec/Rlp.lean`), and moreover

* `kind ≠ 0 → 1 ≤ h0`: a list header has at least one byte (`<1, n, 1>` or
  `<1 + ll, n, 1>` with `ll + 1 ≤ len`, no wrap), so descending into a list payload
  advances the cursor;
* `Hit X.memaddrs p`: the header byte `ld8 p` passed the domain check.

These are the header facts the explicit-stack walker `_rlp_validate_items_body` needs.
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type} {X : Ctx 64}

/-- `<h0, h1, kind>` with `1 ≤ h0 + h1 ≤ L` and `kind ≠ 0 → 1 ≤ h0`. -/
def HdrOk2 (L : BitVec 64) (v : ValueHOL 64) : Prop :=
  ∃ a b c : BitVec 64, v = .rStruct [.val (.word a), .val (.word b), .val (.word c)] ∧
    1 ≤ a.toNat + b.toNat ∧ a.toNat + b.toNat ≤ L.toNat ∧ (c ≠ 0 → 1 ≤ a.toNat)

def HdrRet2 (D : BitVec 64 → Prop) (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∃ P L : BitVec 64, vs = [.val (.word P), .val (.word L)] ∧ HdrOk2 L v ∧ Hit D P

theorem shortRet2 {L N : BitVec 64} {s : PanSemStateFiniteExact 64 σ} (k : Nat)
    (hn : s.locals.lookup (nm "n") = some (.val (.word N))) (hle : N.toNat + 1 ≤ L.toNat)
    {v : ValueHOL 64} (hv : ev s (.rstruct [cw 1, lv (nm "n"), cw k]) = some v) : HdrOk2 L v := by
  have h1 : ev s (.rstruct [cw 1, lv (nm "n"), cw k]) =
      some (.rStruct [.val (.word (BitVec.ofNat 64 1)), .val (.word N),
        .val (.word (BitVec.ofNat 64 k))]) :=
    ev_rstruct (evs_cons (ev_cw _ 1) (evs_cons (ev_lw hn) (evs_cons (ev_cw _ k) evs_nil)))
  rw [h1] at hv
  cases hv
  refine ⟨_, _, _, rfl, ?_, ?_, ?_⟩
  · simp only [BitVec.toNat_ofNat]; omega
  · simp only [BitVec.toNat_ofNat]; omega
  · intro _; simp

theorem hdrShortStr2_hoare (hC : X.code.lookup = guestCode) (P L B : BitVec 64) :
    Hoare σ X (HInvB P L B) hdrShortStr (fun r t => r ≠ none ∧ RetOnly (HdrOk2 L) r t) := by
  have hf := funRet_rlp_fail (σ := σ) hC
  refine hoare_dec fun s _ hs v hv _ => ?_
  rw [ev_sub_b hs 128 hv]
  generalize B - BitVec.ofNat 64 128 = N
  refine hoare_pre (P := fun t => HInv P L t ∧
      t.locals.lookup (nm "n") = some (.val (.word N))) ?_ ?_
  · refine hoare_post (Q := fun r t => r ≠ none ∧ RetOnly (HdrOk2 L) r t) ?_
      (fun r t _ _ h => h)
    refine hoare_guard_seq hf ?_
    refine hoare_seq (R := fun r t => r = none ∧ HInv P L t ∧
        t.locals.lookup (nm "n") = some (.val (.word N)) ∧ N.toNat + 1 ≤ L.toNat) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_ite ?_ ?_
      · refine hoare_post (hoare_guard hf) ?_
        intro r t _ _ ⟨h1, ⟨⟨⟨h2, h3⟩, h4⟩, _⟩, _⟩
        exact ⟨h1, h2, h3, lenLt_false h2 h3 h4⟩
      · exact hoare_skip fun t _ ⟨⟨⟨h2, h3⟩, h4⟩, _⟩ => ⟨rfl, h2, h3, lenLt_false h2 h3 h4⟩
    · exact hoare_return_only fun t _ ⟨_, _, hn, hle⟩ w hw => shortRet2 0 hn hle hw
  · intro t _ ht
    subst ht
    exact ⟨hInv_set _ (by decide) (by decide) hs.1, lk_set_self _ _ _⟩

theorem hdrShortList2_hoare (hC : X.code.lookup = guestCode) (P L B : BitVec 64) :
    Hoare σ X (HInvB P L B) hdrShortList (fun r t => r ≠ none ∧ RetOnly (HdrOk2 L) r t) := by
  have hf := funRet_rlp_fail (σ := σ) hC
  refine hoare_dec fun s _ hs v hv _ => ?_
  rw [ev_sub_b hs 192 hv]
  generalize B - BitVec.ofNat 64 192 = N
  refine hoare_pre (P := fun t => HInv P L t ∧
      t.locals.lookup (nm "n") = some (.val (.word N))) ?_ ?_
  · refine hoare_post (Q := fun r t => r ≠ none ∧ RetOnly (HdrOk2 L) r t) ?_
      (fun r t _ _ h => h)
    refine hoare_guard_seq hf ?_
    exact hoare_return_only fun t _ ⟨⟨h2, h3⟩, h4⟩ w hw => shortRet2 1 h3 (lenLt_false h2 h3 h4) hw
  · intro t _ ht
    subst ht
    exact ⟨hInv_set _ (by decide) (by decide) hs.1, lk_set_self _ _ _⟩

theorem hdrLong2_hoare (hC : X.code.lookup = guestCode) (P L B : BitVec 64) (base kind : Nat) :
    Hoare σ X (HInvB P L B) (hdrLong base kind)
      (fun r t => r ≠ none ∧ RetOnly (HdrOk2 L) r t) := by
  have hf := funRet_rlp_fail (σ := σ) hC
  refine hoare_dec fun s _ hs v hv _ => ?_
  rw [ev_sub_b hs base hv]
  generalize B - BitVec.ofNat 64 base = LL
  refine hoare_pre (P := fun t => HInv P L t ∧
      t.locals.lookup (nm "ll") = some (.val (.word LL))) ?_ ?_
  · refine hoare_post (Q := fun r t => r ≠ none ∧ RetOnly (HdrOk2 L) r t) ?_
      (fun r t _ _ h => h)
    refine hoare_guard_seq hf ?_
    refine hoare_decCallS (funSpec_true _) ?_
    intro t _ ⟨⟨hI, hll⟩, hc⟩ _ _ _ w st _ _ hsh
    have hLL := lenLt_false hI hll hc
    obtain ⟨N, rfl⟩ := val_of_shapeEq_one' hsh
    refine hoare_pre (P := fun u => HInv P L u ∧
        u.locals.lookup (nm "ll") = some (.val (.word LL)) ∧
        u.locals.lookup (nm "n") = some (.val (.word N))) ?_ ?_
    · refine hoare_post (Q := fun r u => r ≠ none ∧ RetOnly (HdrOk2 L) r u) ?_
        (fun r u _ _ h => h)
      refine hoare_guard_seq hf ?_
      refine hoare_guard_seq hf ?_
      refine hoare_return_only ?_
      intro u _ ⟨⟨⟨hI', hll', hn'⟩, _⟩, hc2⟩ w hw
      have h2 := lower_false (cmp_val_false hc2 (ev_sub2 (ev_lenm1 hI') (ev_lw hll')) (ev_lw hn'))
      have hL := hI'.2.2
      have hv' : ev u (.rstruct [.op .add [cw 1, lv (nm "ll")], lv (nm "n"), cw kind]) =
          some (.rStruct [.val (.word (BitVec.ofNat 64 1 + LL)), .val (.word N),
            .val (.word (BitVec.ofNat 64 kind))]) :=
        ev_rstruct (evs_cons (ev_add2 (ev_cw _ 1) (ev_lw hll'))
          (evs_cons (ev_lw hn') (evs_cons (ev_cw _ kind) evs_nil)))
      rw [hv'] at hw
      cases hw
      refine ⟨_, _, _, rfl, ?_, ?_, ?_⟩
      · bv_omega
      · bv_omega
      · intro _; bv_omega
    · intro u _ hu
      subst hu
      refine ⟨hInv_set _ (by decide) (by decide) hI, ?_, lk_set_self _ _ _⟩
      rw [lk_set_ne _ _ (by decide)]
      exact hll
  · intro t _ ht
    subst ht
    exact ⟨hInv_set _ (by decide) (by decide) hs.1, lk_set_self _ _ _⟩

theorem hdrDispatch2_hoare (hC : X.code.lookup = guestCode) (P L B : BitVec 64) :
    Hoare σ X (HInvB P L B) hdrDispatch (RetOnly (HdrOk2 L)) := by
  refine hoare_ite_skip_seq (Q := RetOnly (HdrOk2 L)) ?_ ?_
  · refine hoare_return_only fun s _ ⟨⟨hI, _⟩, _⟩ v hv => ?_
    have h0 : ev s (.rstruct [cw 0, cw 1, cw 0]) =
        some (.rStruct [.val (.word (BitVec.ofNat 64 0)), .val (.word (BitVec.ofNat 64 1)),
          .val (.word (BitVec.ofNat 64 0))]) := rfl
    rw [h0] at hv
    cases hv
    have := hI.2.2
    refine ⟨_, _, _, rfl, ?_, ?_, ?_⟩
    · simp only [BitVec.toNat_ofNat]; omega
    · simp only [BitVec.toNat_ofNat]; omega
    · intro h; exact absurd rfl h
  · refine hoare_ite_skip_seq (Q := RetOnly (HdrOk2 L))
      (hoare_pre (hdrShortStr2_hoare hC P L B) (fun _ _ h => h.1.1)) ?_
    refine hoare_ite_skip_seq (Q := RetOnly (HdrOk2 L))
      (hoare_pre (hdrLong2_hoare hC P L B 183 0) (fun _ _ h => h.1.1.1)) ?_
    refine hoare_ite_skip_seq (Q := RetOnly (HdrOk2 L)) (hoare_pre (hdrShortList2_hoare hC P L B)
      (fun _ _ h => h.1.1.1.1)) ?_
    exact hoare_conseq (hdrLong2_hoare hC P L B 247 1) (fun _ _ h => h.1.1.1.1)
      (fun _ _ _ _ h => h.2)

theorem hdrBody2_hoare (hC : X.code.lookup = guestCode) (P L : BitVec 64) :
    Hoare σ X (fun s => s.locals.lookup (nm "p") = some (.val (.word P)) ∧
      s.locals.lookup (nm "len") = some (.val (.word L))) hdrBody
      (RetP (fun v => HdrOk2 L v ∧ Hit X.memaddrs P)) := by
  refine hoare_guard_seq (funRet_rlp_fail hC) ?_
  refine hoare_dec fun s hs ⟨⟨hp, hl⟩, hc⟩ v hv _ => ?_
  have hL : L.toNat ≠ 0 := by
    have := equal_false (cmp_val_false hc (ev_lw hl) (ev_cw _ 0))
    intro h0
    exact this (BitVec.eq_of_toNat_eq (by simpa using h0))
  have hhit : Hit X.memaddrs P := by
    obtain ⟨w, hw, hh⟩ := ev_loadByte_hit hv
    rw [ev_lw hp] at hw
    cases hw
    rw [← hs.2.1]
    exact hh
  obtain ⟨B, rfl, -⟩ := ev_loadByte_word hv
  refine hoare_conseq (hdrDispatch2_hoare hC P L B) ?_ ?_
  · intro t _ ht
    subst ht
    exact ⟨hInv_set _ (by decide) (by decide) ⟨hp, hl, hL⟩, lk_set_self _ _ _⟩
  · intro r t _ _ ⟨w, hw, hok⟩ v hv
    rw [hw] at hv
    cases hv
    exact ⟨hok, hhit⟩

/-- **`rlp_item_header` returns `<h0, h1, kind>` with `1 ≤ h0 + h1 ≤ len`,
`kind ≠ 0 → 1 ≤ h0`, after a successful domain check of `ld8 p`.** -/
theorem funRet_rlp_item_header2 (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "rlp_item_header") (HdrRet2 X.memaddrs) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA, hB, hla, hlb⟩ := lookupCode_two code_rlp_item_header (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hA
  obtain ⟨L, rfl⟩ := val_of_shapeEq_one hB
  refine hoare_conseq (hdrBody2_hoare hC P L) ?_ ?_
  · intro s _ hs
    rw [hs]
    exact ⟨hla, hlb⟩
  · intro r t _ _ h v hv
    obtain ⟨h1, h2⟩ := h v hv
    exact ⟨P, L, rfl, h1, h2⟩

end InitECandidate.Solver.Spec
