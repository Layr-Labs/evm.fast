import InitECandidate.Solver.MemSafe.HtabEntries.New

set_option autoImplicit false
set_option maxRecDepth 100000

/-!
# `G` with a copied table added

`G_addTableC`: like `HtabEntries.G_addTableG`, for a table that is not empty: its leaf values must fit
the value kind (`hval'`, in the old typing) instead of there being none.
-/

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Struct InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.AllocImpl
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- **`G` with a new table added.** From `G` over `Γ'`, a well-formed empty table at `T` whose
region lies in its header `[T, T+88)` and one array block `[lo, hi)` (owned by the header:
type `tOwn T`, or `tHTAs` ending at `T`), all in live bytes of region `rg` that are in no `Γ'`
object, `G` holds with the array object and then the header appended. -/
theorem G_addTableC {H : Hooks σ} (hH : HooksLawful guestC H) (hM : HooksMono guestC H)
    (hT : HtabHooks H) {th ta : Nat} {rg : Region} (hth : hkOf th = .tab) (hta : IsArrTy ta)
    (hrh : (guestC.ty th).region = rg) (hra : (guestC.ty ta).region = rg)
    (hmh : (guestC.ty th).minSz ≤ 88) (hma : (guestC.ty ta).minSz ≤ 8)
    (hph : ∀ k, (guestC.ty th).slot k = .prot) (hpa : ∀ k, (guestC.ty ta).slot k = .prot)
    (htgh : guestC.tags.lookup th = none) (htga : guestC.tags.lookup ta = none)
    {Γ' : Gam} {u : State σ} (hG : G guestC H Γ' u) {p' : Ptrs}
    (hp' : ptrsOf u = some p') {T : BitVec 64} (hwf : Spec.Inv.TableWF u T)
    (hval' : ∀ w, Spec.Inv.LeafVal u.memory T w → Fits Γ' (valK th) w) (hkl : Spec.Inv.hdr u.memory T 0 = BitVec.ofNat 64 (htKL th))
    {lo hi : Nat} (hlo8 : lo % 8 = 0) (hhi8 : hi % 8 = 0)
    (hlh : lo < hi) (hhi : hi ≤ 2 ^ 64) (hdTA : T.toNat + 88 ≤ lo ∨ hi ≤ T.toNat)
    (hown : ta = tOwn T ∨ (ta = tHTAs ∧ hi = T.toNat))
    (hreg : ∀ a, Spec.Inv.TableRegion u.memory T a →
      Spec.Inv.InR a T 88 ∨ (lo ≤ a.toNat ∧ a.toNat < hi))
    (hfA : ∀ a : BitVec 64, lo ≤ a.toNat → a.toNat < hi →
      InLiveB p' rg a.toNat ∧ ¬ InObj Γ' a.toNat)
    (hfT : ∀ a : BitVec 64, T.toNat ≤ a.toNat → a.toNat < T.toNat + 88 →
      InLiveB p' rg a.toNat ∧ ¬ InObj Γ' a.toNat) :
    G guestC H (Γ' ++ [arrObjT ta lo hi] ++ [hdrObjT th T]) u := by
  have hl := Spec.Inv.lay_of_sep hwf.1
  have ht8 := hl.t8
  have htt := hl.ht
  have hAlo := arrObjT_lo (ta := ta) (hi := hi) (by omega : lo < 2 ^ 64)
  have hAhi := arrObjT_hi (ta := ta) (by omega : lo < 2 ^ 64) (Nat.le_of_lt hlh)
  have hlive : ∀ (x : Obj), (guestC.ty x.ty).region = rg → rg.Live p' x.lo x.size →
      ∀ p, ptrsOf u = some p → (guestC.ty x.ty).region.Live p x.lo x.size := by
    intro x hr h p hp
    rw [hp'] at hp; cases hp
    rw [hr]; exact h
  have hbyte : ∀ n : Nat, lo ≤ n → n < hi → InLiveB p' rg n := fun n h1 h2 => by
    have := (hfA (BitVec.ofNat 64 n) (by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; exact h1)
      (by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; exact h2)).1
    rwa [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)] at this
  have hbyteT : ∀ n : Nat, T.toNat ≤ n → n < T.toNat + 88 → InLiveB p' rg n := fun n h1 h2 => by
    have := (hfT (BitVec.ofNat 64 n) (by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; exact h1)
      (by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; exact h2)).1
    rwa [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)] at this
  -- the array object
  have G1 := G_addObj hH hM hG (x := arrObjT ta lo hi) (by rw [hAlo]; exact hlo8)
    (by show (hi - lo) % 8 = 0; omega) (by show 0 < hi - lo; omega)
    (by show (guestC.ty ta).minSz ≤ hi - lo; omega)
    (hlive _ hra (by
      rw [hAlo]
      exact live_of_bytes (by show 0 < hi - lo; omega) (hbyte lo (le_refl _) hlh)
        (hbyte _ (by show lo ≤ lo + (hi - lo) - 1; omega) (by show lo + (hi - lo) - 1 < hi; omega))))
    (fun a ⟨h1, h2⟩ => (hfA a (by rw [hAlo] at h1; exact h1) (by rw [hAhi] at h2; exact h2)).2)
    (fun k _ => by show Fits _ ((guestC.ty ta).slot k) _; rw [hpa k]; trivial) htga
    (hT.arr _ _ _ hta)
  -- the header
  set Γ3 := Γ' ++ [arrObjT ta lo hi] with hΓ3
  have hdisjT : ∀ a : BitVec 64, InO (hdrObjT th T) a → ¬ InObj Γ3 a.toNat := by
    intro a ⟨h1, h2⟩ hin
    simp only [hdrObjT, Obj.hi, Obj.lo] at h1 h2
    obtain ⟨o, ho, ho1, ho2⟩ := hin
    rcases List.mem_append.mp ho with ho | ho
    · exact (hfT a h1 h2).2 ⟨o, ho, ho1, ho2⟩
    · simp only [List.mem_singleton] at ho; subst ho
      rw [hAlo] at ho1; rw [hAhi] at ho2; omega
  have hG3 : GamOK Γ3 := by
    obtain ⟨p3, -, -, hL3, -⟩ := G1
    exact gamOK_of_layout hL3
  have hGT : GamOK (Γ3 ++ [hdrObjT th T]) := by
    refine gamOK_snoc hG3 ht8 (by show 88 % 8 = 0; decide) (by show 0 < 88; decide) hmh
      (fun h => by
        have h' : (guestC.ty th).region = .scratch := h
        rw [hrh] at h'; subst h'
        have := hbyteT (T.toNat + 87) (by omega) (by omega)
        simp only [InLiveB] at this
        simp only [hdrObjT, Obj.hi]; omega) ?_
    intro y hy _
    have hpos := (hG3.1 y hy).2.2.1
    by_contra hc
    simp only [not_or, not_le] at hc
    have hm : (BitVec.ofNat 64 (max y.lo (hdrObjT th T).lo)).toNat = max y.lo (hdrObjT th T).lo := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt]
      simp only [hdrObjT, Obj.lo, Obj.hi] at *
      have := T.isLt; have := y.base.isLt; omega
    refine hdisjT (BitVec.ofNat 64 (max y.lo (hdrObjT th T).lo)) ⟨?_, ?_⟩ ⟨y, hy, ?_, ?_⟩ <;>
      rw [hm] <;> simp only [hdrObjT, Obj.lo, Obj.hi] at * <;> omega
  have harr : ArrIn (Γ3 ++ [hdrObjT th T]) u.memory (hdrObjT th T) := by
    intro a ha _
    simp only [hdrObjT] at ha
    rcases hreg a ha with h | ⟨h1, h2⟩
    · unfold Spec.Inv.InR at h
      exact ⟨hdrObjT th T, by simp, Or.inl rfl, by simp only [hdrObjT, Obj.lo]; omega,
        by simp only [hdrObjT, Obj.hi, Obj.lo]; omega⟩
    · refine ⟨arrObjT ta lo hi, by simp [hΓ3], ?_, by rw [hAlo]; exact h1, by rw [hAhi]; exact h2⟩
      rcases hown with h | ⟨h, h'⟩
      · exact Or.inr (Or.inl h)
      · exact Or.inr (Or.inr ⟨h, by rw [hAhi, h']; rfl⟩)
  have hval : ValOK (Γ3 ++ [hdrObjT th T]) u.memory (hdrObjT th T) := fun w hw =>
    fits_append (fits_append (hval' w hw))
  exact G_addObj hH hM G1 (x := hdrObjT th T) ht8 (by show 88 % 8 = 0; decide)
    (by show 0 < 88; decide) hmh
    (hlive _ hrh (by
      simp only [hdrObjT, Obj.lo]
      exact live_of_bytes (by decide) (hbyteT _ (le_refl _) (by omega))
        (hbyteT _ (by omega) (by omega))))
    hdisjT (fun k _ => by show Fits _ ((guestC.ty th).slot k) _; rw [hph k]; trivial) htgh
    (hT.make _ _ _ (by simp) hGT hth ⟨hwf, harr, hval, hkl⟩)


end InitECandidate.Solver.MemSafe.HtabEntries

#print axioms InitECandidate.Solver.MemSafe.HtabEntries.G_addTableC
