import InitECandidate.Solver.MemSafe.Ops7.CreateB
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_create` (sonnet-create)

**`j_op_create hcca : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_create")`**: the
static check, the three pops, `cr_cost` (cost prefix, `charge_gas`), `cr_em` and the rest down to
`generic_create` (`gcr_sumSpecT_guestR`) and the tail. The only open fact is
`CcaHyp σ` (`compute_contract_address`'s summary, `Ops7/Hyps.lean`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ops7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

theorem cr_c0 (W : BitVec 64) (hW : W.toNat < 2 ^ 59) :
    12000 ≤ (BitVec.ofNat 64 12000 + BitVec.ofNat 64 2 * W).toNat := by
  rw [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat, BitVec.toNat_ofNat]
  have h1 : 12000 % 2 ^ 64 = 12000 := by norm_num
  have h2 : 2 % 2 ^ 64 = 2 := by norm_num
  rw [h1, h2, Nat.mod_eq_of_lt (a := 2 * W.toNat) (by omega), Nat.mod_eq_of_lt (by omega)]
  omega

section create
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs
local notation "QC" => QCall Γ0 s0

theorem cr_main (hP : PreHyps σ) (hcca : CcaHyp σ) (hfs : fs = (e, c) :: rest)
    (ha0 : act s0 = 1) (hk0 : GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs 0 s0)
    (hPhi : Phi s0 < 2 ^ 64) :
    HoareG σ guestCtx (fun t => t = s0) crBody QC := by
  unfold crBody
  have hQ : PostOK Γ0 s0 p0 fs QC := postOK_qc ha0
  refine hq_tabC hfs hQ.toC (E := lgE2) (by simp [lgE2]) lg_rns_mem lg_rns_fp lg_rns_ok
    (kcall_of_gk hk0) (args := []) ?_ ?_
  · intro vs hvs Γ1 p1 _ _ _ _
    exact argsOK_any (by simp [lgRnsSg]) (by rw [evs_len hvs]; rfl)
  intro st1 hk1 hkE hk112
  refine hq_pop hfs ha0 (kcall_congr hk1 (t := { st1 with locals := s0.locals }) rfl rfl rfl rfl) ?_
  intro v1 st2 hK2 ⟨ws1, hl1, hv1⟩ hsp2 h232 h32
  subst hv1
  have hxs1 := la_set (s := { st2 with locals := s0.locals }) (la_nil s0.locals) (nm "endowment") (wv ws1)
  refine hq_pop hfs ha0 (kcall_congr hK2 rfl rfl rfl rfl) ?_
  intro v2 st3 hK3 ⟨ws2, hl2, hv2⟩ hsp3 h232' h32'
  subst hv2
  obtain ⟨a0, a1, a2, a3, rfl⟩ := Struct.wv4 hl2
  have hxs2 := la_set (s := { st3 with locals := (setVarHOLFinite (nm "endowment") (wv ws1)
    { st2 with locals := s0.locals }).locals }) hxs1 (nm "mstart") (wv [a0, a1, a2, a3])
  refine hq_pop hfs ha0 (kcall_congr hK3 rfl rfl rfl rfl) ?_
  intro v3 st4 hK4 ⟨ws3, hl3, hv3⟩ hsp4 h232'' h32''
  subst hv3
  obtain ⟨b0, b1, b2, b3, rfl⟩ := Struct.wv4 hl3
  have hxs3 := la_set (s := { st4 with locals := (setVarHOLFinite (nm "mstart") (wv [a0, a1, a2, a3])
    { st3 with locals := (setVarHOLFinite (nm "endowment") (wv ws1)
      { st2 with locals := s0.locals }).locals }).locals }) hxs2 (nm "msize") (wv [b0, b1, b2, b3])
  refine cr_cost hfs hPhi ha0 (ce := crCost0) (c0f := fun W => BitVec.ofNat 64 12000 +
      BitVec.ofNat 64 2 * W) ?_ (fun W hW => cr_c0 W hW) (kcall_congr hK4 rfl rfl rfl rfl) hxs3
    (a0 := a0) (a1 := a1) (a2 := a2) (a3 := a3) (b0 := b0) (b1 := b1) (b2 := b2) (b3 := b3)
    (by lkq) (by lkq) hsp4 ?_
  · intro t W hW
    exact ev_add2 (ev_cw _ 12000) (ev_mul2 (ev_cw _ 2) (by rw [ev_lv]; exact hW))
  · intro st X1 X2 W cv hKst hxs hcv hsp h32 hb
    exact cr_em hP hcca hfs ha0 hKst hxs (nn := Struct.satWordF b0 b1 b2 b3) (en := wv ws1)
      (by lkq) (by lkq) (by lkq) (by lkq) hsp (by omega) h32 hb

end create

/-- **`op_create`'s bounded step spec** (open only in `CcaHyp σ`). -/
theorem j_op_create (hcca : CcaHyp σ) :
    OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_create") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_create) :=
    declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 599) (by decide)) ⟨_, rfl⟩
  refine opStepB_qcall hcode ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hP hk0
  haveI : Fact (ChainOf s0 fs) := by
    obtain ⟨⟨_, _, _, _, hchc, _⟩, _⟩ := id hk0
    exact ⟨hchc.chain⟩
  rw [crBody_eq]
  exact cr_main preHyps_proved hcca hfs (by unfold act; rw [if_pos hrdy]) hk0 hP

end InitECandidate.Solver.MemSafe.Ops7

#print axioms InitECandidate.Solver.MemSafe.Ops7.cr_main
#print axioms InitECandidate.Solver.MemSafe.Ops7.j_op_create
