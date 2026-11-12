import InitECandidate.Solver.MemSafe.Frames.GkHoare
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_stop`'s step spec (frames11, via `gk_opStep`)

```
fun 1 op_stop() { st ev + 104, 0; pc_add(1); return 0; }
```
The store clears `RUNNING` of the active frame, so `Φ` drops by the active bit (`phi_store_run`);
the rest (`pc_add(1); return 0`) is accepted by the gas checker with the status set.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64} {H : Hooks σ}

/-- The running frame's weight when its `RUNNING` is cleared while it is active. -/
theorem phi_store_run (hF : FrameCfg guestC H tEV tCK) {Γ : Gam} {u t : State σ}
    {fs : List Frame} {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest)
    (hG : G guestC H Γ u) (hch : ChainL guestC tEV tCK Γ u fs) (hch' : ChainL guestC tEV tCK Γ t fs)
    (hm : t.memory = upd u.memory (e + BitVec.ofNat 64 104) 0)
    (hrest : wsum t.memory rest = wsum u.memory rest)
    (hact : fld u.memory c 32 = 0 ∧ fld u.memory e 104 ≠ 0) : Phi t + 1 = Phi u := by
  obtain ⟨p, -, hord, hL, -⟩ := hG
  have htop : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch htop
  obtain ⟨oc, hoc, hocb, hoct⟩ := ck_obj hch htop
  dsimp only at hoeb hocb
  subst hoeb hocb
  have hse := ev_size hF hL hoe hoet
  have hsc := ck_size hF hL hoc hoct
  have hne : oe.base ≠ oc.base := base_ne_of_ty hL hoe hoc (by rw [hoet, hoct]; exact hF.ne)
  have kE : ∀ j, j < 280 → j ≠ 104 → fld t.memory oe.base j = fld u.memory oe.base j :=
    fun j hj hjk => by
      rw [hm]; exact fld_upd_ne' (cell_ne hord hL hoe hoe (by omega) (by omega) (Or.inr hjk))
  have kC : fld t.memory oc.base 32 = fld u.memory oc.base 32 := by
    rw [hm]; exact fld_upd_ne' (cell_ne hord hL hoc hoe (by omega) (by omega) (Or.inl hne.symm))
  have k104 : fld t.memory oe.base 104 = 0 := by
    rw [hm]; unfold fld; rw [rd_upd, if_pos rfl]
  rw [phi_eq hch'.chain, phi_eq hch.chain, hfs, wsum_cons, wsum_cons, hrest, wt_eq, wt_eq,
    kE 64 (by omega) (by omega), kE 192 (by omega) (by omega), kC, k104, if_pos hact]
  have h0 : ¬ (fld u.memory oc.base 32 = 0 ∧ (0 : BitVec 64) ≠ 0) := fun h => h.2 rfl
  rw [if_neg h0]
  omega

/-- `op_stop`'s body. -/
def stopBody : ProgHOL 64 :=
  .seq (stG "ev" 104 (cw 0)) (.seq (callD (nm "pc_add") [cw 1]) (.return (cw 0)))

theorem stopBody_eq : (declPair Guest.Software.guestFn_op_stop).2.2 = stopBody := by
  conv => lhs; cbv
  rfl

theorem stopTail_gc :
    gc gE true (.seq (callD (nm "pc_add") [cw 1]) (.return (cw 0))) = some true := by
  decide +kernel

/-- **`op_stop`'s step spec** at `guestHooksR`. -/
theorem j_op_stop : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_stop") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_stop) :=
    declPair_valid (List.getElem_mem (n := 502) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStep guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hk0
  rw [stopBody_eq]
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ0, -⟩ := hk0
  obtain ⟨e', c', rest', hfs', he', hc', -⟩ := hch.chain
  rw [hfs] at hfs'
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
  obtain ⟨⟨h1, h2⟩, -⟩ := hfs'
  rw [← h1] at he'
  rw [← h2] at hc'
  have hact : fld s0.memory c 32 = 0 ∧ fld s0.memory e 104 ≠ 0 := by
    have h1 := act_eq he' hc'
    unfold act at h1
    rw [if_pos hrdy] at h1
    by_contra hn
    rw [if_neg hn] at h1
    cases h1
  refine hoareG_seq (R := fun ro t => ro = none ∧
      GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs 1 t) ?_
    (fun r t _ hr _ h => absurd h.1 hr) (hoareG_pt fun u hu =>
      gc_sound (kOK_gk hF.hooks) (callSem_gE hfs) _ true true stopTail_gc u hu.2)
  refine hoareG_stG fun s _ hs G v hG hv => ?_
  subst hs
  rw [he', Option.some.injEq] at hG
  subst hG
  rw [ev_cw] at hv
  cases hv
  refine ⟨0, rfl, fun _ => ⟨rfl, ?_⟩⟩
  have hmod : ModifiesOnly (TopCells e c) s.memory (upd s.memory (e + BitVec.ofNat 64 104) 0) :=
    modifiesOnly_upd (modifiesOnly_refl _ _) (Or.inl ⟨13, by simp [evDriverSlots], rfl⟩) 0
  have hk := kg_top hF hfs hrun hch hE
    (t := ({ s with memory := upd s.memory (e + BitVec.ofNat 64 104) 0 } : State σ)) hmod rfl rfl rfl
  obtain ⟨hrun2, hch2, hE2, hrest, -, -⟩ := hk
  have hΦ := phi_store_run hF hfs hrun.2.2.2.2.2.1 hch hch2 rfl hrest hact
  exact ⟨⟨jrNZ_congr rfl hJ, Γ1, p1, hrun2, hch2, hE2⟩, by omega, Or.inr (by omega)⟩

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.phi_store_run
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_stop
