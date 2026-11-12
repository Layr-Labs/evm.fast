import InitECandidate.Solver.MemSafe.Eb.Cost12
import InitECandidate.Solver.MemSafe.Eb.Mid

/-!
# `execute_block`: the cost walk, part 13 (`mid_chain`: ebS16 to the loop)
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

/-- The cost of `ebS16`, given the cost `B27` of the loop and the tail. -/
def bMid (Bpuc B27 : Nat) : Nat :=
  0 + ((1 + Bpuc + 0) + (0 + ((1 + Bpuc + 0) + (0 + ((1 + cSft + 0) + ((1 + cTrack + 0) + B27))))))

section cw13
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem cw_decT {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64} {w : BitVec 64} {B : Nat}
    (hQT : ResIns n QT)
    (he : ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → v = .val (.word w))
    (hk : CW (PA E (En.set n (.val (.word w))) S) body B QT) :
    CW (PA E En S) (.dec n sh e body) B QT :=
  ⟨Inv.costP_dec fun s hs hP v hv hsh => hk.1.pre fun t _ ht => by
      subst ht
      have := he s hP v hv
      subst this
      exact pa_set hP n _,
   hdecT hQT he hk.2⟩

theorem cw_mid_chain {Bpuc B27 : Nat} (hQ : LocIns QT) (hPuc : HypPuc σ) (hPucC : HypPucCost σ Bpuc) (hSft : HypSft σ)
    (hK : HypKeepG σ)
    (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S) (hT : Tidy Z S)
    (hzp : ∀ g ∈ Z, ¬ (pucW.contains g = true)) (hzs : ∀ g ∈ Z, ¬ (sftW.contains g = true))
    (hzt : ∀ g ∈ Z, ¬ (tabW.contains g = true)) (hbal : BalS S)
    {T1 T2 z bh bn ptxs0 pl0 : BitVec 64}
    (h1 : S (Fct.gobj (nm "beacon_roots_address") T1 tB24)) (h2 : S (Fct.gobj (nm "history_storage_address") T2 tB24))
    (hz32 : S (Fct.gobj (nm "zero32") z tB32)) (hbh : S (Fct.gval (nm "block_hashes") bh))
    (hbn : S (Fct.gval (nm "block_hashes_n") bn)) (hpl : En (nm "pl") = some (.val (.word pl0)))
    (hpt : S (Fct.pcv (pl0 + BitVec.ofNat 64 32) ptxs0))
    (hnext : ∀ X : BitVec 64, CW (PA E (((En.set (nm "lasth") (.val (.word X))).set (nm "ptxs")
      (.val (.word ptxs0))).set (nm "i") (.val (.word 0))) S) ebS27 B27 QT) :
    CW (PA E En S) ebS16 (bMid Bpuc B27) QT := by
  unfold ebS16
  refine cw_seq (cw_hn hn_skip (costP_zero cost_skip)) ?_
  unfold ebS17
  refine cw_seq (cw_hn (hn_puc hPuc hK hE0 hS hT hzp hbal h1 (e2 := .load .one (.op .add [lv (nm "si"), cw 24])) ?_)
    (cp_callK hK hE0 hS hPucC rfl (puc_obl hT hzp hbal h1 (e2 := .load .one (.op .add [lv (nm "si"), cw 24])) ?_))) ?_
  · intro s hs v hv
    exact ev_load_word hv
  · intro s hs v hv
    exact ev_load_word hv
  unfold ebS18
  refine cw_decT (locIns_resIns hQ _) (w := z) (fun s hs v hv => evI_gobj hs hz32 v hv) ?_
  unfold ebS19
  have hlasth : (En.set (nm "lasth") (.val (.word z))) (nm "lasth") = some (.val (.word z)) := env_set_self _ _ _
  refine cw_seq (P := PA E (En.set (nm "lasth") (.val (.word z))) S)
    (R := fun t => ∃ X : BitVec 64, PA E (En.set (nm "lasth") (.val (.word X))) S t) ⟨?_, ?_⟩ ?_
  · unfold ebS20
    exact costP_zero (by simpa using cost_ite (σ := σ) (X := guestCtx) (cost_assign .local _ _) cost_skip)
  · unfold ebS20
    refine hn_ite (P := PA E (En.set (nm "lasth") (.val (.word z))) S) ?_ ?_
    · refine hn_post (hn_pre (hassignT (n := nm "lasth") (w' := bh + (bn - BitVec.ofNat 64 1) * BitVec.ofNat 64 32)
        ⟨_, hlasth⟩ ?_) (fun s _ h => h.1)) (fun t _ h => ⟨bh + (bn - BitVec.ofNat 64 1) * BitVec.ofNat 64 32, pa_mono h (fun x v hx => by
          simp only [Env.set] at hx ⊢; split_ifs at hx ⊢ <;> simp_all) (fun f hf => hf)⟩)
      intro s hs v hv
      exact evI_add (evI_gval hs hbh) (evI_mul (evI_sub (evI_gval hs hbn) (evI_cw s 1)) (evI_cw s 32)) v hv
    · exact hn_post (hn_pre hn_skip (fun s _ h => h.1)) (fun t _ h => ⟨z, h⟩)
  · refine cw_exists fun X => ?_
    have hX : (En.set (nm "lasth") (.val (.word X))) (nm "lasth") = some (.val (.word X)) := env_set_self _ _ _
    unfold ebS21
    refine cw_seq (cw_hn (hn_puc hPuc hK hE0 hS hT hzp hbal h2 (e2 := lv (nm "lasth")) ?_)
      (cp_callK hK hE0 hS hPucC rfl (puc_obl hT hzp hbal h2 (e2 := lv (nm "lasth")) ?_))) ?_
    · intro s hs v hv
      have := evI_lv_pa hs hX v hv
      exact ⟨X, this⟩
    · intro s hs v hv
      have := evI_lv_pa hs hX v hv
      exact ⟨X, this⟩
    unfold ebS22
    refine cw_seq (cw_hn hn_skip (costP_zero cost_skip)) ?_
    unfold ebS23
    refine cw_seq (cw_hn (hn_sft hSft hK hE0 hS hT hzs) (costU cc_cSft)) ?_
    unfold ebS24
    refine cw_seq (cw_hn (hn_track hT hzt) (costU cc_cTrack)) ?_
    unfold ebS25
    refine cw_decT (locIns_resIns hQ _) (w := ptxs0) (fun s hs v hv =>
      evI_ld_pcv hs (evI_lvoff hs (by simp (config := { decide := true }) [Env.set, hpl]) 32) hpt v hv) ?_
    unfold ebS26
    refine cw_decT (locIns_resIns hQ _) (w := 0) (fun s hs v hv => ?_) ?_
    · have := evI_cw s 0
      exact this v hv
    · exact hnext X

end cw13

end InitECandidate.Solver.MemSafe.Eb
