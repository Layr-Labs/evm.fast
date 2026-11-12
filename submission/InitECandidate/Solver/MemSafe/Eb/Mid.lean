import InitECandidate.Solver.MemSafe.Eb.Puc

/-!
# `execute_block`: from `bal_init` to the transaction loop

`mid_chain`: `process_unchecked_system_transaction` ×2 (with `lasth`), `state_fresh_tx`, `track_ancestor_access(1)`, `ptxs`, `i`.
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

section mid
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem mid_chain (hQ : LocIns QT) (hPuc : HypPuc σ) (hSft : HypSft σ) (hK : HypKeepG σ)
    (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S) (hT : Tidy Z S)
    (hzp : ∀ g ∈ Z, ¬ (pucW.contains g = true)) (hzs : ∀ g ∈ Z, ¬ (sftW.contains g = true))
    (hzt : ∀ g ∈ Z, ¬ (tabW.contains g = true)) (hbal : BalS S)
    {T1 T2 z bh bn ptxs0 pl0 : BitVec 64}
    (h1 : S (Fct.gobj (nm "beacon_roots_address") T1 tB24)) (h2 : S (Fct.gobj (nm "history_storage_address") T2 tB24))
    (hz32 : S (Fct.gobj (nm "zero32") z tB32)) (hbh : S (Fct.gval (nm "block_hashes") bh))
    (hbn : S (Fct.gval (nm "block_hashes_n") bn)) (hpl : En (nm "pl") = some (.val (.word pl0)))
    (hpt : S (Fct.pcv (pl0 + BitVec.ofNat 64 32) ptxs0))
    (hnext : ∀ X : BitVec 64, Hoare σ guestCtx (PA E (((En.set (nm "lasth") (.val (.word X))).set (nm "ptxs")
      (.val (.word ptxs0))).set (nm "i") (.val (.word 0))) S) ebS27 QT) :
    Hoare σ guestCtx (PA E En S) ebS16 QT := by
  unfold ebS16
  refine hseqN hn_skip ?_
  unfold ebS17
  refine hseqN (hn_puc hPuc hK hE0 hS hT hzp hbal h1 (e2 := .load .one (.op .add [lv (nm "si"), cw 24])) ?_) ?_
  · intro s hs v hv
    exact ev_load_word hv
  unfold ebS18
  refine hdecT (locIns_resIns hQ _) (w := z) (fun s hs v hv => evI_gobj hs hz32 v hv) ?_
  unfold ebS19
  have hlasth : (En.set (nm "lasth") (.val (.word z))) (nm "lasth") = some (.val (.word z)) := env_set_self _ _ _
  -- the conditional assignment of `lasth`
  refine hseqN (P1 := fun t => ∃ X : BitVec 64, PA E (En.set (nm "lasth") (.val (.word X))) S t) ?_ ?_
  · unfold ebS20
    refine hn_ite (P := PA E (En.set (nm "lasth") (.val (.word z))) S) ?_ ?_
    · refine hn_post (hn_pre (hassignT (n := nm "lasth") (w' := bh + (bn - BitVec.ofNat 64 1) * BitVec.ofNat 64 32)
        ⟨_, hlasth⟩ ?_) (fun s _ h => h.1)) (fun t _ h => ⟨bh + (bn - BitVec.ofNat 64 1) * BitVec.ofNat 64 32, pa_mono h (fun x v hx => by
          simp only [Env.set] at hx ⊢; split_ifs at hx ⊢ <;> simp_all) (fun f hf => hf)⟩)
      intro s hs v hv
      exact evI_add (evI_gval hs hbh) (evI_mul (evI_sub (evI_gval hs hbn) (evI_cw s 1)) (evI_cw s 32)) v hv
    · exact hn_post (hn_pre hn_skip (fun s _ h => h.1)) (fun t _ h => ⟨z, h⟩)
  · refine hoare_exists fun X => ?_
    have hX : (En.set (nm "lasth") (.val (.word X))) (nm "lasth") = some (.val (.word X)) := env_set_self _ _ _
    unfold ebS21
    refine hseqN (hn_puc hPuc hK hE0 hS hT hzp hbal h2 (e2 := lv (nm "lasth")) ?_) ?_
    · intro s hs v hv
      have := evI_lv_pa hs hX v hv
      exact ⟨X, this⟩
    unfold ebS22
    refine hseqN hn_skip ?_
    unfold ebS23
    refine hseqN (hn_sft hSft hK hE0 hS hT hzs) ?_
    unfold ebS24
    refine hseqN (hn_track hT hzt) ?_
    unfold ebS25
    refine hdecT (locIns_resIns hQ _) (w := ptxs0) (fun s hs v hv =>
      evI_ld_pcv hs (evI_lvoff hs (by simp (config := { decide := true }) [Env.set, hpl]) 32) hpt v hv) ?_
    unfold ebS26
    refine hdecT (locIns_resIns hQ _) (w := 0) (fun s hs v hv => ?_) ?_
    · have := evI_cw s 0
      exact this v hv
    · exact hnext X

end mid

end InitECandidate.Solver.MemSafe.Eb
