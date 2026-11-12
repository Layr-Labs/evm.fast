import InitECandidate.Solver.MemSafe.Ra.AttPart2a

/-!
# `run_attempt`, after `payload_header` (continued): `raS23 .. raS34`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

def bFront (B : Nat) : Nat :=
  0 + (1 + cAlloc + ((1 + cHh + 0) + (1 + cMemeq + (0 + (0 + (1 + cIvvh + (0 + (0 + (0 + ((1 + cVhd + 0) + (0 + B)))))))))))

section front
variable {E : EbE σ} {si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD : BitVec 64} {En : Env} {S : FS}
  {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem p2_front (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hQ : ∀ n, ResIns n QT)
    (hOk : Ok2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD En S) {B : Nat}
    (hnext : ∀ (En' : Env) (S' : FS), Ok2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD En' S' →
      CW (PA E En' S') raS35 B QT) :
    CW (PA E En S) raS23 (bFront B) QT := by
  have hsi : En (nm "si") = some (.val (.word si0)) := hOk.en _ _ (by simp (config := { decide := true }) [En2, Env.set])
  have hpl : En (nm "pl") = some (.val (.word pl0)) := hOk.en _ _ (by simp (config := { decide := true }) [En2, Env.set])
  have hhdr : En (nm "hdr") = some (.val (.word H)) := hOk.en _ _ (by simp (config := { decide := true }) [En2, Env.set])
  have hbh : En (nm "bh") = none ∨ True := Or.inr trivial
  unfold raS23
  refine cw_seq (cw_hn hn_skip (costP_zero cost_skip)) ?_
  unfold raS24
  have h32 : (BitVec.ofNat 64 32).toNat = 32 := by decide
  refine cw_allocB hK hE0 hOk.safe (hQ _) (n := BitVec.ofNat 64 32) (by decide) (by decide)
    (fun s _ => evI_cw s 32) hOk.tidy z2_tab ?_
  intro w
  rw [h32]
  have hOk1 := ok2_add (f0 := Fct.fbuf w 32) (by exact trivial) ⟨fun g w t h => (by cases h), fun g w h => (by cases h)⟩
    (ok2_set (x := nm "bh") (v := .val (.word w)) (by decide) (by decide) (by decide) hOk)
  unfold raS25
  refine cw_seq (cw_hhX (ea := lv (nm "hdr")) (eo := lv (nm "bh")) (O := w) (Z := Z2) hOk1.tidy z2_a
    (fun s hpa v hv => ⟨H, ?_⟩) (fun s hpa => ?_)) ?_
  · exact evI_lv_pa hpa (hOk1.en _ _ (by simp (config := { decide := true }) [En2, Env.set])) v hv
  · exact evI_lv_pa hpa (by simp (config := { decide := true }) [Env.set])
  unfold raS26
  refine cw_tab1 (hQ _) tab_memeq (by decide) (by decide) (by simp) (by simp) hOk1.tidy z2_tab cc_cMemeq ?_
  intro w0
  have hOk2 := ok2_set (x := nm "eq") (v := .val (.word w0)) (by decide) (by decide) (by decide) hOk1
  unfold raS27
  refine cw_guard_then ?_
  unfold raS28
  refine cw_seq (cw_hn hn_skip (costP_zero cost_skip)) ?_
  unfold raS29
  have hsi2 : _ := hOk2.en (nm "si") _ (by simp (config := { decide := true }) [En2, Env.set] : En2 si0 pl0 H (nm "si") = some (.val (.word si0)))
  refine cw_decCallRk (PreC := fun _ _ => True) hK hE0 hOk2.safe (hQ _) cr_ivvh (gwk_a (by decide)) (fun _ _ => False)
    (Inv.calleeCostP_of_calleeCost cc_ivvh) (fun _ _ _ _ _ _ => trivial) ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h,
      (tidy_gmiss hOk2.tidy z2_a).1, (tidy_gmiss hOk2.tidy z2_a).2⟩ ?_ ?_
  · intro s hpak vs hvs callee Γ p hr hL hC
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    rw [evs_nil] at hr1
    cases hr1
    have e := evI_lv_pa (pak_pa hpak) hsi2 v1 h1
    subst e
    have hpcv := hL (Fct.pcv (si0 + BitVec.ofNat 64 0) pl0) (hOk2.sub _ (by simp [S2, S2b]))
    obtain ⟨o, ho, hb, ht, -⟩ := hL (Fct.obj pl0 tPL 136) (hOk2.sub _ (by simp [S2, S2b]))
    exact ivPre_of_facts (ebRun_G (ebRun_loc hr callee (s.clock - 1))) hpcv.1 ho hb ht
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq hsh f hf
    exact hf.elim
  intro v hsh
  have hOk3 := ok2_congr (ok2_set (x := nm "vvh") (v := v) (by decide) (by decide) (by decide) hOk2)
    (S' := fun g => _ ∨ False) (fun f hf => hf.elim (fun h => h) (fun h => h.elim)) (fun f hf => Or.inl hf)
  unfold raS30
  refine cw_seq (cw_hn hn_skip (costP_zero cost_skip)) ?_
  unfold raS31
  refine cw_guard_then ?_
  unfold raS32
  refine cw_seq (cw_hn hn_skip (costP_zero cost_skip)) ?_
  unfold raS33
  refine cw_callK hK hE0 hOk3.safe cr_vhd (gwk_a (by decide)) (fun _ => False) cc_vhd
    ⟨fun s hpak vs hvs callee Γ p hr hL hC => ⟨hC, trivial⟩, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h,
      (tidy_gmiss hOk3.tidy z2_a).1, (tidy_gmiss hOk3.tidy z2_a).2⟩ ?_ ?_
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq f hf
    exact hf.elim
  unfold raS34
  refine cw_seq (cw_hn hn_skip (costP_zero cost_skip)) ?_
  exact hnext _ _ (ok2_congr hOk3 (fun f hf => hf.elim (fun h => h) (fun h => h.elim)) (fun f hf => Or.inl hf))
#print axioms InitECandidate.Solver.MemSafe.Att.p2_front
