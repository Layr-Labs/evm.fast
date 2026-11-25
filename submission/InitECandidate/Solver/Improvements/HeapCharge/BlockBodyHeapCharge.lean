import InitECandidate.Solver.Improvements.HeapCharge.DecoderHeapCharge

/-!
# `execute_block`: loop part 9 (`process_transaction(tx, i);`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace BlockBodyHeapCharge
open InitECandidate.Solver.MemSafe.Eb
open HeapRankedLoop
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

def Growth (M : Nat) (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  ∀ Γ p, G guestC (HR σ) Γ s → PtPreE M vs s Γ p → ∀ v, r = .returned v →
    ∃ p', ptrsOf t = some p' ∧ p.hp + 22000 ≤ p'.hp

section pt
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS} {M : Nat}

theorem hn_pt_charge (hPt : FunSpec σ guestCtx (nm "process_transaction") (Growth M)) (hM : 2 ^ 24 + 2 ≤ M) (lo : Nat)
    {w t r lg rl be0 c0 wd0 ntx0 nwd0 iv T : BitVec 64}
    (hled : Led S w t r lg rl be0 c0 wd0 ntx0 nwd0 iv) (hlt : iv.toNat < ntx0.toNat)
    (hEnTx : En (nm "tx") = some (.val (.word T))) (hEnI : En (nm "i") = some (.val (.word iv)))
    (hTx : S (Fct.obj T tTX 0)) :
    HN (fun s => PAX E En S (fun Γ p u => CPre Γ ∧ Rec.TxBuf Γ (Exb.gp0 p) u.memory T 152) s ∧ lo ≤ frontier s)
      (callD (nm "process_transaction") [lv (nm "tx"), lv (nm "i")])
      (fun t => lo + 22000 ≤ frontier t) := by
  have hvs : ∀ (s : State σ) (vs : List (ValueHOL 64)), PA E En S s →
      evs s [lv (nm "tx"), lv (nm "i")] = some vs → vs = [.val (.word T), .val (.word iv)] := by
    intro s vs hpa hvs
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [evI_lv_pa hpa hEnTx v1 h1, evI_lv_pa hpa hEnI v2 h2]

  refine hoare_callD hPt ?_
  rintro s _ ⟨pa, hlo⟩ vs hargs callee v st spec hst
  have vals := hvs s vs (pax_pa pa) hargs
  obtain ⟨⟨Γ, p, run, hL, hc, hb⟩, -⟩ := pa
  have hLe := holdsAll_loc hL callee (s.clock - 1)
  obtain ⟨q, hq, hord, layout, -⟩ := ebRun_G run
  have eq : q = p := Option.some.inj (hq.symm.trans (ebRun_ptrs run))
  subst q
  obtain ⟨oT, hoT, hbT, htT, -⟩ := hL _ hTx
  have hp : ptrsOf (callEntryStateHOLFinite s callee) = some p := (ptrsOf_congr rfl).trans (ebRun_ptrs run)
  have hg : G guestC (HR σ) Γ (callEntryStateHOLFinite s callee) :=
    (G_locFree Hooks.guestHooksR_lawful s _ _).mpr (ebRun_G run)
  obtain ⟨hd, coin, buf, beG⟩ := ptPreE_of_led hled hLe hp hord layout
    (jrNZ_congr (s := s) rfl (ebRun_jr run)) ⟨ebRun_ev run, ebRun_cc run⟩ hM ⟨oT, hoT, hbT, htT⟩ hc.1 hb hlt
  obtain ⟨p', hr, he⟩ := spec Γ p hg ⟨hc, T, iv, w, be0, t, r, vals, hd, coin, buf, beG⟩ v rfl
  have hstart : frontier s = p.hp := by simp [frontier, ebRun_ptrs run]
  have hend : frontier { st with locals := s.locals } = p'.hp := by
    change ((ptrsOf st).map Ptrs.hp).getD 0 = _
    simp [hr]
  refine ⟨rfl, ?_⟩
  change lo + 22000 ≤ frontier { st with locals := s.locals }
  rw [hend]
  rw [hstart] at hlo
  exact (Nat.add_le_add_right hlo 22000).trans he
end pt
section body
variable {E : EbE σ} {En : Env} {M : Nat}
theorem body_growth (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hPt : FunSpec σ guestCtx (nm "process_transaction") (Growth M)) (hM : 2 ^ 24 + 2 ≤ M)
    {S : FS} {Z : List MlS} {w t r lg rl be0 c0 wd0 ntx0 nwd0 pl0 ptxs0 X iv : BitVec 64}
    (hled : Led S w t r lg rl be0 c0 wd0 ntx0 nwd0 0) (hS : SafeS S) (hT : Tidy Z S)
    (hzt : ∀ g ∈ Z, ¬ (tabW.contains g = true)) (hzp : ∀ g ∈ Z, ¬ (ptW.contains g = true))
    (hpl : S (Fct.obj pl0 tPL 136)) (h32 : S (Fct.pcv (pl0 + BitVec.ofNat 64 32) ptxs0))
    (h40 : S (Fct.pcv (pl0 + BitVec.ofNat 64 40) ntx0)) (hEn : En (nm "tx") = none) (lo : Nat) (hlt : iv.toNat < ntx0.toNat) :
    Hoare σ guestCtx (fun s => PA E (EnL En X ptxs0 iv) (SLs S t r iv.toNat) s ∧ frontier s = lo) ebS29
      (fun result u => result = none ∨ result = some .continue → lo + 22000 ≤ frontier u) := by
  have hptxs : (EnL En X ptxs0 iv) (nm "ptxs") = some (.val (.word ptxs0)) := by
    simp (config := { decide := true }) [EnL, Env.set]
  have hi : (EnL En X ptxs0 iv) (nm "i") = some (.val (.word iv)) := by
    simp (config := { decide := true }) [EnL, Env.set]

  have hled' := led_sla hled iv
  unfold ebS29
  refine hoare_post (hoare_pre (DecoderHeapCharge.hdec_charge lo (QT := fun _ u => lo + 22000 ≤ frontier u)
    (fun _ _ _ => id) hK hE0 (safe_sls hS t r iv.toNat) (tidy_sls hT t r iv.toNat) hzt hptxs hi hlt hled.bt
    (Or.inl hpl) (Or.inl h32) (Or.inl h40) (fun T => ?_)) ?_) (fun _ _ _ _ h _ => h)
  · unfold ebS30
    refine hseqN hn_skip ?_
    unfold ebS31
    refine hseqN (hn_pt_charge hPt hM lo (led_noread hled' (Fct.obj T tTX 0) (fun y h => h))
      hlt (by simp [Env.set]) (by simp (config := { decide := true }) [EnL, Env.set]) (Or.inr rfl)) ?_
    unfold ebS32
    refine hseqN hn_skip ?_
    exact hoare_assignK fun _ _ h _ _ _ => h
  · exact fun _ _ h => ⟨h.1, Nat.le_of_eq h.2.symm⟩
end body
#print axioms hn_pt_charge
#print axioms body_growth
end BlockBodyHeapCharge
