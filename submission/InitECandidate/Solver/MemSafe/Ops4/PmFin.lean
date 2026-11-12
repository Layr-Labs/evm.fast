import InitECandidate.Solver.MemSafe.Ops4.PmGas

set_option autoImplicit false

/-!
# `pre_modexp`: the gas fact (`GasFS`), generic in the callee tables
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Ops4
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Mod
open InitECandidate.Solver.MemSafe.Rpg
open InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64} {H : Hooks σ}

/-- The callee summaries of `pre_modexp` (no `charge_gas`). -/
structure Tabs (σ : Type) (X : Ctx 64) (H : Hooks σ) : Prop where
  br : SumSpecA σ X guestC H (nm "buffer_read") sgBR (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  ufb : SumSpecA σ X guestC H (nm "u256_from_be") sgAA (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  sw : SumSpecA σ X guestC H (nm "sat_word") sg1 (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  mg : SumSpecA σ X guestC H (nm "modexp_gas") sg4 (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  mn : SumSpecA σ X guestC H (nm "min") sgAA (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  mxp : SumSpecA σ X guestC H (nm "modexp") mxSig MxPre (fun _ _ _ _ => False)
    (fun _ _ _ _ _ _ => True)

theorem gt_pre_hdr_capE :
    (upg Types.guestC capE).GT.lookup (nm "pre_hdr_buf") = some (.ptr tB96) := by decide

theorem layout_aAt {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} (hG : G guestC H Γ0 s0)
    (hps : ptrsOf s0 = some p0) :
    Layout (aAt H s0 Γ0 p0).C (aAt H s0 Γ0 p0).p0 (aAt H s0 Γ0 p0).Γ0 := by
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  rw [hps] at hq
  cases hq
  exact hL

theorem mkCP (En : RpEnv σ X H) (T : Tabs σ X H) {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (hG : G guestC H Γ0 s0) (hps : ptrsOf s0 = some p0) (hreq : ReqOK capE s0 Γ0) :
    CP σ X (aAt H s0 Γ0 p0) :=
  { ha := (entry_act En hG hps hreq).1
    hgrow := rfl
    hL0 := layout_aAt hG hps
    hcaps := rfl
    hty := fun _ => rfl
    htyb := fun _ => rfl
    hgt := gt_pre_hdr_capE
    br := T.br
    ufb := T.ufb
    sw := T.sw
    mg := T.mg
    mn := T.mn
    mnF := funSpec_min En.hX
    mxp := T.mxp
    hAl := allocSpec_alloc En.hX
    hAc := summ_alloc_heap En.hX En.hH En.hAC
    hRel := releaseSpec_heap_release En.hX
    hMk := markSpec'_heap_mark En.hX }

theorem pk_aAt (En : RpEnv σ X H) {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (hG : G guestC H Γ0 s0) (hps : ptrsOf s0 = some p0) (hreq : ReqOK capE s0 Γ0)
    {L : LocalsH → Prop} (hL : L s0.locals) :
    PK (aAt H s0 Γ0 p0) (aAt H s0 Γ0 p0).p0.hp (W (aAt H s0 Γ0 p0).p0.hp) L s0 := by
  obtain ⟨ha, hh⟩ := entry_act En hG hps hreq
  have hp0 : (aAt H s0 Γ0 p0).p0.hp < 2 ^ 64 := by
    have := ha.hord0.2.1
    unfold heapEnd at this
    omega
  have hwin : WinOK (aAt H s0 Γ0 p0) Γ0 p0 .heap (W (aAt H s0 Γ0 p0).p0.hp) :=
    (win_new (a := aAt H s0 Γ0 p0) (Γ := Γ0) (p := p0) (s := s0) hh (rg := .heap)
      (w := W (aAt H s0 Γ0 p0).p0.hp) (by rw [toNat_W hp0]; rfl)).2.2
  exact ⟨hL, Γ0, p0, ext_refl _, hh, le_refl _, hwin⟩

/-- **The `charge_gas` stage**: rebase to a fresh activation at the state after the call. -/
theorem chg_stage (En : RpEnv σ X H) (T : Tabs σ X H) {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (hG : G guestC H Γ0 s0) (hps : ptrsOf s0 = some p0) (hreq : ReqOK capE s0 Γ0)
    {e : BitVec 64} {g0 : Nat} (hge : gword s0 Frames.nmEv = some e) (hg0 : gasV s0 e ≤ g0)
    (g : PM) (MK : BitVec 64) (hF : g.Bl ≤ 1024 ∧ g.El ≤ 1024 ∧ g.M ≤ 1024) :
    HoareG σ X (PK (aAt H s0 Γ0 p0) (aAt H s0 Γ0 p0).p0.hp MK (fun m => LP (p14 g) m)) pmCharge
      (QW (fun t => gasV t e ≤ g0)) := by
  unfold pmCharge
  refine hoareG_seq (R := ChgPost H e g0 (fun m => LP (p14 g) m))
    (chg_call En hG hps hreq hge hg0 (args := [lv (nm "cost")]) ?_) ?_ ?_
  · intro s _ vs hvs
    rw [evs_len' hvs]; rfl
  · intro r t _ hr _ hR r' hr' hna
    exact hR.2 r' hr' hna
  · intro t ht hR hg
    obtain ⟨Γ2, p2, hG2, hps2, hreq2, hge2, hgas2, hL2⟩ := hR.1 rfl
    have cp2 := mkCP En T hG2 hps2 hreq2
    have H1 := stRest cp2 g (W (aAt H t Γ2 p2).p0.hp) hF
    have H2 := H1 t ht (pk_aAt En hG2 hps2 hreq2 hL2) hg
    intro r' hr' hna
    obtain ⟨Γ', p', -, hh'⟩ := H2 r' hr' hna
    exact gasle_of_heap En hG2 hps2 hreq2 hge2 hgas2 hh'

/-- **`GasFS` for `pre_modexp`**, from the callee tables. -/
theorem gasFS_pre_modexp (En : RpEnv σ X H) (T : Tabs σ X H) :
    GasFS σ X H (nm "pre_modexp") := by
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hreq e hge
  rw [En.hX] at hl
  obtain ⟨rfl, -, hlen, -⟩ := lookupCode_gen code_pre_modexp hl
  obtain ⟨p, hp, -⟩ := id hG
  have hreqE : ReqOK capE s Γ := req_sub capSub_capE hreq
  have cp := mkCP En T hG hp hreqE
  have cx : CPW σ X (aAt H s Γ p) (fun t => gasV t e ≤ gasV s e) :=
    { cp := cp
      hw := ⟨(fun t ⟨Γ', p', _, hh'⟩ => gasle_of_heap En hG hp hreqE hge le_rfl hh'),
             (fun t L h => h)⟩
      chg := fun g MK hF => chg_stage En T hG hp hreqE hge le_rfl g MK hF }
  have H0 := stMsg cx g1 (W (aAt H s Γ p).p0.hp)
  have := H0 s hs (pk_aAt En hG hp hreqE (L := fun m => LP (p0 g1) m)
    (fun _ hp' => absurd hp' List.not_mem_nil)) (by rw [hr]; exact hgood)
  rw [hr] at this
  exact this r rfl hna

end InitECandidate.Solver.MemSafe.Ops4

#print axioms InitECandidate.Solver.MemSafe.Ops4.chg_stage
#print axioms InitECandidate.Solver.MemSafe.Ops4.gasFS_pre_modexp
