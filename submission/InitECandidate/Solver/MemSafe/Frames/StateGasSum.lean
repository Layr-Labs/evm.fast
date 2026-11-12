import InitECandidate.Solver.MemSafe.Frames.StateGas
import InitECandidate.Solver.MemSafe.Frames.BKeepTop

/-!
# Summaries of `charge_state_gas` and `credit_state_gas_refund`

Both move gas between `GAS_LEFT` and `STATE_GAS_SPILLED` (and the reservoir `STATE_GAS_LEFT`,
which is not part of `Φ`): under `Chain` they keep `G` and `Chain` (same typing), keep the active
bit (`act t = act s`: they write neither `RUNNING` nor `CK_DONE`), and do not raise `Φ`
(design §2.3: the sum `GAS_LEFT + SPILLED` is kept; a wrap-around could only lower it).
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem rem_le {sgl gl a : BitVec 64} (h1 : sgl < a) (h2 : a ≤ addSatF sgl gl) :
    (a - sgl).toNat ≤ gl.toNat := by
  rw [BitVec.toNat_sub_of_le (BitVec.le_of_lt h1)]
  rw [BitVec.lt_def] at h1
  unfold addSatF at h2
  have ha := a.isLt
  have hs := sgl.isLt
  have hg := gl.isLt
  split at h2
  · rename_i hw
    rw [BitVec.lt_def, BitVec.toNat_add] at hw
    have : sgl.toNat + gl.toNat ≥ 2 ^ 64 := by
      by_contra hc
      rw [Nat.mod_eq_of_lt (by omega)] at hw
      omega
    omega
  · rename_i hw
    rw [BitVec.le_def, BitVec.toNat_add] at h2
    rw [BitVec.lt_def, BitVec.toNat_add] at hw
    have : sgl.toNat + gl.toNat < 2 ^ 64 := by
      by_contra hc
      rw [show (sgl.toNat + gl.toNat) % 2 ^ 64 = sgl.toNat + gl.toNat - 2 ^ 64 by omega] at hw
      omega
    rw [Nat.mod_eq_of_lt this] at h2
    omega

/-- The summary post of the state-gas functions. -/
def QGasN (C : Cfg) (tEV tCK : Nat) (_ : List (ValueHOL 64)) (s : State σ) (_ : Gam)
    (_ : PanSemResultExact 64) (t : State σ) (Γ' : Gam) : Prop :=
  Chain C tEV tCK Γ' t ∧ act t = act s ∧ Phi t ≤ Phi s

theorem credit_sumSpec {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hC : X.code.lookup = guestCode)
    (hF : FrameCfg C H tEV tCK) :
    SumSpec σ X C H (nm "credit_state_gas_refund") (sg1 []) (fun _ s Γ => Chain C tEV tCK Γ s)
      (fun _ _ Γ a => ¬ KCell C Γ a) (QGasN C tEV tCK) := by
  refine FunSpec.mono (FunSpec.and (credit_spec hC) (funSpec_dom _)) ?_
  intro vs s r t ⟨hE, hd, hbe⟩ hg Γ hG _ ⟨fs, hch⟩
  obtain ⟨e, a, rfl, he, hr, hglob, hm⟩ := hE hg
  obtain ⟨p, e', c, rest, oe, oc, hps, hord, hL, hfs, he', hc, hoe, hoeb, hoet, hoc, hocb, hoct,
    hse, hsc, hne⟩ := top_objs hF hG hch
  rw [he, Option.some.injEq] at he'
  subst he' hoeb hocb
  have hmod : ModifiesOnly (TopCells oe.base oc.base) s.memory t.memory := by
    rw [hm]
    unfold creditMem
    refine modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _) ?_ _) ?_ _) ?_ _
    · exact Or.inl ⟨8, by simp [evDriverSlots], rfl⟩
    · exact Or.inl ⟨24, by simp [evDriverSlots], rfl⟩
    · exact Or.inl ⟨9, by simp [evDriverSlots], rfl⟩
  obtain ⟨p', hrun, hch', hrest⟩ := top_write (gw := []) hF hG hch hfs hmod hglob hd hbe
  have hx : ∀ j, j < 280 → oc.base + BitVec.ofNat 64 32 ≠ oe.base + BitVec.ofNat 64 j :=
    fun j hj => cell_ne hord hL hoc hoe (by omega) (by omega) (Or.inl hne.symm)
  have h32 : fld t.memory oc.base 32 = fld s.memory oc.base 32 := by
    rw [hm]; unfold creditMem fld
    rw [rd_upd, if_neg (hx 72 (by omega)), rd_upd, if_neg (hx 192 (by omega)), rd_upd,
      if_neg (hx 64 (by omega))]
  have h104 : fld t.memory oe.base 104 = fld s.memory oe.base 104 := by
    rw [hm]; unfold creditMem fld
    rw [rd_upd, if_neg (by simp), rd_upd, if_neg (by simp), rd_upd, if_neg (by simp)]
  have h64 : fld t.memory oe.base 64 = fld s.memory oe.base 64 + minF a (fld s.memory oe.base 192) := by
    rw [hm]; unfold creditMem fld
    rw [rd_upd, if_neg (by simp), rd_upd, if_neg (by simp), rd_upd, if_pos rfl]
  have h192 : fld t.memory oe.base 192 = fld s.memory oe.base 192 - minF a (fld s.memory oe.base 192) := by
    rw [hm]; unfold creditMem fld
    rw [rd_upd, if_neg (by simp), rd_upd, if_pos rfl]
  refine ⟨Γ, p', p', sumCore_of_run_bk rfl rfl hrun (bkeep_of_topCells hF hord hL hoe hoet hoc hoct hse hsc hmod), ⟨fs, hch'⟩,
    act_keep he hc hglob h32 h104, ?_⟩
  rw [phi_eq hch'.chain, phi_eq hch.chain, hfs, wsum_cons, wsum_cons, hrest, wt_eq, wt_eq, h32, h104,
    h64, h192]
  have hf : minF a (fld s.memory oe.base 192) ≤ fld s.memory oe.base 192 := by
    unfold minF; split
    · exact BitVec.le_of_lt (by assumption)
    · exact BitVec.le_refl _
  rw [BitVec.toNat_sub_of_le hf, BitVec.toNat_add]
  have := Nat.mod_le ((fld s.memory oe.base 64).toNat + (minF a (fld s.memory oe.base 192)).toNat)
    (2 ^ 64)
  rw [BitVec.le_def] at hf
  omega

theorem csg_sumSpec {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hC : X.code.lookup = guestCode)
    (hF : FrameCfg C H tEV tCK) :
    SumSpec σ X C H (nm "charge_state_gas") (sg1 []) (fun _ s Γ => Chain C tEV tCK Γ s)
      (fun _ _ Γ a => ¬ KCell C Γ a) (QGasN C tEV tCK) := by
  refine FunSpec.mono (FunSpec.and (csg_spec hC) (funSpec_dom _)) ?_
  intro vs s r t ⟨hE, hd, hbe⟩ hg Γ hG _ ⟨fs, hch⟩
  obtain ⟨e, a, rfl, he, hglob, hcase⟩ := hE hg
  obtain ⟨p, e', c, rest, oe, oc, hps, hord, hL, hfs, he', hc, hoe, hoeb, hoet, hoc, hocb, hoct,
    hse, hsc, hne⟩ := top_objs hF hG hch
  rw [he, Option.some.injEq] at he'
  subst he' hoeb hocb
  have hx : ∀ j, j < 280 → oc.base + BitVec.ofNat 64 32 ≠ oe.base + BitVec.ofNat 64 j :=
    fun j hj => cell_ne hord hL hoc hoe (by omega) (by omega) (Or.inl hne.symm)
  rcases hcase with ⟨_, _, hm⟩ | ⟨hlt, hle, _, hm⟩ | ⟨_, _, _, hm⟩
  · have hmod : ModifiesOnly (TopCells oe.base oc.base) s.memory t.memory := by
      rw [hm]
      exact modifiesOnly_upd (modifiesOnly_refl _ _) (Or.inl ⟨9, by simp [evDriverSlots], rfl⟩) _
    obtain ⟨p', hrun, hch', hrest⟩ := top_write (gw := []) hF hG hch hfs hmod hglob hd hbe
    have h32 : fld t.memory oc.base 32 = fld s.memory oc.base 32 := by
      rw [hm]; unfold fld; rw [rd_upd, if_neg (hx 72 (by omega))]
    have h104 : fld t.memory oe.base 104 = fld s.memory oe.base 104 := by
      rw [hm]; unfold fld; rw [rd_upd, if_neg (by simp)]
    have h64 : fld t.memory oe.base 64 = fld s.memory oe.base 64 := by
      rw [hm]; unfold fld; rw [rd_upd, if_neg (by simp)]
    have h192 : fld t.memory oe.base 192 = fld s.memory oe.base 192 := by
      rw [hm]; unfold fld; rw [rd_upd, if_neg (by simp)]
    refine ⟨Γ, p', p', sumCore_of_run_bk rfl rfl hrun (bkeep_of_topCells hF hord hL hoe hoet hoc hoct hse hsc hmod), ⟨fs, hch'⟩, act_keep he hc hglob h32 h104, ?_⟩
    rw [phi_eq hch'.chain, phi_eq hch.chain, hfs, wsum_cons, wsum_cons, hrest, wt_eq, wt_eq, h32,
      h104, h64, h192]
  · have hmod : ModifiesOnly (TopCells oe.base oc.base) s.memory t.memory := by
      rw [hm]
      unfold csgMem
      refine modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _) ?_ _) ?_ _) ?_ _
      · exact Or.inl ⟨9, by simp [evDriverSlots], rfl⟩
      · exact Or.inl ⟨8, by simp [evDriverSlots], rfl⟩
      · exact Or.inl ⟨24, by simp [evDriverSlots], rfl⟩
    obtain ⟨p', hrun, hch', hrest⟩ := top_write (gw := []) hF hG hch hfs hmod hglob hd hbe
    have h32 : fld t.memory oc.base 32 = fld s.memory oc.base 32 := by
      rw [hm]; unfold csgMem fld
      rw [rd_upd, if_neg (hx 192 (by omega)), rd_upd, if_neg (hx 64 (by omega)), rd_upd,
        if_neg (hx 72 (by omega))]
    have h104 : fld t.memory oe.base 104 = fld s.memory oe.base 104 := by
      rw [hm]; unfold csgMem fld
      rw [rd_upd, if_neg (by simp), rd_upd, if_neg (by simp), rd_upd, if_neg (by simp)]
    have h64 : fld t.memory oe.base 64 =
        fld s.memory oe.base 64 - (a - fld s.memory oe.base 72) := by
      rw [hm]; unfold csgMem fld
      rw [rd_upd, if_neg (by simp), rd_upd, if_pos rfl]
    have h192 : fld t.memory oe.base 192 =
        fld s.memory oe.base 192 + (a - fld s.memory oe.base 72) := by
      rw [hm]; unfold csgMem fld
      rw [rd_upd, if_pos rfl, rd_upd, if_neg (by simp), rd_upd, if_neg (by simp)]
    refine ⟨Γ, p', p', sumCore_of_run_bk rfl rfl hrun (bkeep_of_topCells hF hord hL hoe hoet hoc hoct hse hsc hmod), ⟨fs, hch'⟩, act_keep he hc hglob h32 h104, ?_⟩
    rw [phi_eq hch'.chain, phi_eq hch.chain, hfs, wsum_cons, wsum_cons, hrest, wt_eq, wt_eq, h32,
      h104, h64, h192]
    have hrl := rem_le hlt hle
    have hrl' : a - fld s.memory oe.base 72 ≤ fld s.memory oe.base 64 := by
      rw [BitVec.le_def]; exact hrl
    rw [BitVec.toNat_sub_of_le hrl', BitVec.toNat_add]
    have := Nat.mod_le ((fld s.memory oe.base 192).toNat + (a - fld s.memory oe.base 72).toNat)
      (2 ^ 64)
    omega
  · have hmod : ModifiesOnly (TopCells oe.base oc.base) s.memory t.memory := by
      rw [hm]; exact modifiesOnly_refl _ _
    obtain ⟨p', hrun, hch', -⟩ := top_write (gw := []) hF hG hch hfs hmod hglob hd hbe
    refine ⟨Γ, p', p', sumCore_of_run_bk rfl rfl hrun (bkeep_of_topCells hF hord hL hoe hoet hoc hoct hse hsc hmod), ⟨fs, hch'⟩,
      act_keep he hc hglob (by rw [hm]) (by rw [hm]), le_of_eq (phi_congr hch hm hglob)⟩

end InitECandidate.Solver.MemSafe.Frames
