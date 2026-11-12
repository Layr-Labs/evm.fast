import InitECandidate.Solver.MemSafe.Eb.PartK
import InitECandidate.Solver.MemSafe.Rec.TxBuf

/-!
# `execute_block`: the two unchecked system transactions
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- 20 bytes inside an object with only scalar slots are a `BufOK` buffer. -/
theorem bufOK_of_scalar_obj {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {x : Obj}
    (hx : x ∈ Γ) (hsc : ∀ k, (guestC.ty x.ty).slot k = .scalar) {b n : Nat} (h1 : x.lo ≤ b) (h2 : b + n ≤ x.hi) :
    BufOK guestC Γ p b n := by
  intro c hc
  obtain ⟨c8, c1, c2⟩ := hc
  obtain ⟨x8, xs8, -, -, -⟩ := hL.1 x hx
  simp only [Obj.hi, Obj.lo] at h2 h1 x8
  have hlo : x.base.toNat ≤ c.toNat := by omega
  have hhi : c.toNat + 8 ≤ x.base.toNat + x.size := by omega
  have hk : x.HasSlot ((c.toNat - x.base.toNat) / 8) := by unfold Obj.HasSlot; omega
  left
  refine ⟨x, hx, (c.toNat - x.base.toNat) / 8, hk, hsc _, ?_⟩
  apply BitVec.eq_of_toNat_eq
  rw [(cell_toNat hord hL hx hk).1]
  unfold Obj.lo
  omega

theorem tB24_scalar : ∀ k, (guestC.ty tB24).slot k = .scalar := slot_all (by decide) (by decide)

/-- The constant address globals (`tB24` objects) are 20-byte buffers. -/
theorem bufOK_tB24 {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {x : Obj} (hx : x ∈ Γ)
    (ht : x.ty = tB24) : BufOK guestC Γ p x.base.toNat 20 := by
  have hmin := (hL.1 x hx).2.2.2.1
  rw [ht] at hmin
  have : (guestC.ty tB24).minSz = 24 := rfl
  refine bufOK_of_scalar_obj hord hL hx (by rw [ht]; exact tB24_scalar) le_rfl ?_
  unfold Obj.hi; omega

def BalS (S : FS) : Prop :=
  (∃ w, S (Fct.gobj (nm "bs") w tBS)) ∧ (∃ w, S (Fct.gobj (nm "bal_accounts") w tHTd20)) ∧
  (∃ w, S (Fct.gobj (nm "bal_key_buf") w tB64)) ∧ (∃ w, S (Fct.gobj (nm "bal_idx_accts") w tHTh28)) ∧
  (∃ w, S (Fct.gobj (nm "bal_idx_stor") w tHTh60)) ∧ (∃ w, S (Fct.gobj (nm "sk_buf") w tB64))

theorem balG_of_balS {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {S : FS} (h : BalS S)
    (hL : HoldsAll p0 Γ p u S) : BalG Γ u := by
  obtain ⟨⟨w1, h1⟩, ⟨w2, h2⟩, ⟨w3, h3⟩, ⟨w4, h4⟩, ⟨w5, h5⟩, ⟨w6, h6⟩⟩ := h
  exact ⟨⟨w1, (hL _ h1).1, (hL _ h1).2⟩, ⟨w2, (hL _ h2).1, (hL _ h2).2⟩, ⟨w3, (hL _ h3).1, (hL _ h3).2⟩,
    ⟨w4, (hL _ h4).1, (hL _ h4).2⟩, ⟨w5, (hL _ h5).1, (hL _ h5).2⟩, ⟨w6, (hL _ h6).1, (hL _ h6).2⟩⟩

theorem ev_load_word {s : State σ} {a : ExpHOL 64} {v : ValueHOL 64} (h : ev s (.load .one a) = some v) :
    ∃ d, v = .val (.word d) := by
  obtain ⟨w', hw', -, hv⟩ := ev_load_one h
  exact ⟨_, hv⟩

section puc
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}

theorem hn_puc (hP : HypPuc σ) (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S)
    (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (pucW.contains g = true)) (hbal : BalS S)
    {g : MlS} {T : BitVec 64} (hgT : S (Fct.gobj g T tB24)) {e2 : ExpHOL 64}
    (he2 : ∀ s : State σ, PA E En S s → ∀ v, ev s e2 = some v → ∃ d, v = .val (.word d)) :
    HN (PA E En S) (callD (nm "process_unchecked_system_transaction") [gv g, e2, cw 32]) (PA E En S) := by
  refine hn_post (hn_pre (hn_callRk (E := E) (En := En) (S := S) (f := nm "process_unchecked_system_transaction")
    (args := [gv g, e2, cw 32]) (W := fun g' => pucW.contains g' = true) hP (gwk_puc (by decide)) (fun _ => False) ?_ ?_)
    (fun s _ hh => pa_hpart hK hE0 hS hh)) (fun t _ hh => pa_mono hh (fun _ _ h => h) (fun f hf => Or.inl hf))
  · refine ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩
    intro s hpa vs hvs callee Γ p hr hL hC
    have hpa' : PA E En S s := ⟨⟨Γ, p, hr, hL⟩, hpa.2⟩
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨v3, vs3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    have e1 := evI_gobj hpa' hgT v1 h1
    obtain ⟨d, hd⟩ := he2 s hpa' v2 h2
    rw [ev_cw] at h3
    cases h3
    subst e1; subst hd
    have hLe := holdsAll_loc hL callee (s.clock - 1)
    obtain ⟨hgw, o, ho, hob, hot⟩ := hL _ hgT
    obtain ⟨q, hq, hord, hL0, -⟩ := ebRun_G hr
    obtain rfl : q = p := Option.some.inj (hq.symm.trans (ebRun_ptrs hr))
    refine ⟨hC, balG_of_balS hbal hLe, T, d, BitVec.ofNat 64 32, rfl, ?_, by decide⟩
    have := bufOK_tB24 hord hL0 ho hot
    rw [hob] at this
    exact this
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq f hf
    exact hf.elim

/-- `state_fresh_tx();` -/
theorem hn_sft (hP : HypSft σ) (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S)
    (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (sftW.contains g = true)) :
    HN (PA E En S) (callD (nm "state_fresh_tx") []) (PA E En S) := by
  refine hn_post (hn_pre (hn_callRk (E := E) (En := En) (S := S) (f := nm "state_fresh_tx")
    (args := []) (W := fun g' => sftW.contains g' = true) hP (gwk_sft (by decide)) (fun _ => False) ?_ ?_)
    (fun s _ hh => pa_hpart hK hE0 hS hh)) (fun t _ hh => pa_mono hh (fun _ _ h => h) (fun f hf => Or.inl hf))
  · refine ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩
    intro s hpa vs hvs callee Γ p hr hL hC
    exact hC
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq f hf
    exact hf.elim

/-- `track_ancestor_access(1);` -/
theorem hn_track (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true)) :
    HN (PA E En S) (callD (nm "track_ancestor_access") [cw 1]) (PA E En S) := by
  have hcr := callR_of_csumm (σ := σ) tab_track (by decide) (by intro g _ h; cases h) csok_nil
  refine hn_post (hn_callR (E := E) (En := En) (S := S) (f := nm "track_ancestor_access") (args := [cw 1])
    (W := fun g' => tabW.contains g' = true) hcr (gwk_tab (by decide)) (fun _ => False) ?_ ?_)
    (fun t _ hh => pa_mono hh (fun _ _ h => h) (fun f hf => Or.inl hf))
  · refine callObl_plain ?_ hT hz
    intro s hs vs hvs Γ p hr hL
    exact argsOK_any_eval (by simp) (by simp) hvs
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq f hf
    exact hf.elim

end puc

end InitECandidate.Solver.MemSafe.Eb
