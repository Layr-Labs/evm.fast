import InitECandidate.Solver.MemSafe.Ops4.SwapnB
import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false

/-!
# `op_swapn` (the `OpStep` field)

`charge_gas(3); imm = code_imm(); n = decode_single(imm); if SP < n + 1 { raise EvmErr 2 };
stack_swap_positions(0, n); pc_add(2); return 0`.
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ops4
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Mod (V W toNat_W W_toNat ev_addW ev_subW ev_lsrW)

variable {σ : Type}

def swpnTail : ProgHOL 64 := .seq (callD (nm "pc_add") [cw 2]) Struct.rz
theorem swpnTail_gc : gc gE true swpnTail = some true := by decide +kernel

def swpnBody : ProgHOL 64 :=
  .seq (callD (nm "charge_gas") [cw 3])
   (.decCall (nm "imm") .one (nm "code_imm") []
     (.decCall (nm "n") .one (nm "decode_single") [lv (nm "imm")]
       (.seq (.ite (.cmp .lower (gLoad "ev" 16) (.op .add [lv (nm "n"), cw 1]))
           (.raise (nm "EvmErr") (cw 2)) .skip)
         (.seq (callD (nm "stack_swap_positions") [cw 0, lv (nm "n")]) swpnTail))))

theorem swpnBody_eq : (declPair Guest.Software.guestFn_op_swapn).2.2 = swpnBody := by
  conv => lhs; cbv
  rfl

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

/-- **`stack_swap_positions(a, b); k`** on `GK d` when both positions are below `SP`. -/
theorem hoareG_swapStep (hfs : fs = (e, c) :: rest) {t : State σ} {d : Nat} (hkt : KJ d t)
    {aE bE : ExpHOL 64} {i j x : BitVec 64} (hi : ev t aE = some (.val (.word i)))
    (hj : ev t bE = some (.val (.word j))) (hSP : ev t (gLoad "ev" 16) = some (.val (.word x)))
    (hi' : i.toNat < x.toNat) (hj' : j.toNat < x.toNat) {k : ProgHOL 64} {b' : Bool}
    (hk : HoareG σ guestCtx (fun t' => ∃ u, u = t ∧ t'.locals = u.locals ∧ KJ d t' ∧
        ∀ j ∈ evProtSlots, fld t'.memory e (8 * j) = fld u.memory e (8 * j)) k (GQ (KJ) b')) :
    HoareG σ guestCtx (fun s => s = t) (.seq (callD (nm "stack_swap_positions") [aE, bE]) k)
      (GQ (KJ) b') := by
  have hE : t.globals.lookup Struct.gEv = some (.val (.word e)) :=
    AllocImpl.lookup_of_gword (gk_gword hfs hkt)
  have hyv : x = rd t.memory (e + BitVec.ofNat 64 16) := by
    have := (Struct.ev_evL hE hSP).1
    simpa using this
  refine hoareG_gkSummP hfs (sg := Struct.sgSwap) rfl swap_sumSpec swap_fp
    (P := fun s => s = t) (d := d) ?_ hk
  intro u hu
  subst hu
  refine ⟨hkt, fun vs hvs Γ1 p1 hG hp hch => ⟨argsOK_any (by simp [Struct.sgSwap])
    (by rw [evs_len hvs]; rfl), fun callee => ?_⟩⟩
  obtain ⟨v0, vs0, rfl, hv0, h0⟩ := evs_cons_inv hvs
  obtain ⟨v1, vs1, rfl, hv1, h1⟩ := evs_cons_inv h0
  have hz := evs_zero h1
  subst hz
  rw [hi] at hv0
  rw [hj] at hv1
  simp only [Option.some.injEq] at hv0 hv1
  subst hv0; subst hv1
  obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
  subst hob
  refine ⟨⟨i, j, rfl, fun e' he' => ?_⟩, fun c' hc' _ => ?_⟩
  · have hb := evObj_base hevo he'
    have hSP' : (Struct.fSP (callEntryStateHOLFinite u callee).memory e') = x := by
      unfold Struct.fSP
      rw [Struct.cells_base hb, hyv]
      rfl
    rw [hSP']
    exact ⟨hi', hj'⟩
  · simp only [List.mem_cons, List.not_mem_nil, or_false] at hc'
    subst hc'
    exact ⟨o, hevo.1, hevo.2.1, hevo.2.2⟩

theorem swpn_core (hfs : fs = (e, c) :: rest) {u0 : State σ} (hk0 : KJ 0 u0) :
    HoareG σ guestCtx (fun t => t = u0) swpnBody (GQ (KJ) true) := by
  unfold swpnBody
  refine hoareG_gkCallC hfs chg3_cl hk0 fun t1 hl1 hk1 => ?_
  refine hoareG_kPure (P := fun s => s = t1) (pureR_code_imm guestCtx_code) ?_
  intro u hu vs hvs callee v st hm hg hd hbe hRv hsh
  subst hu
  obtain ⟨w, rfl, hw⟩ := hRv
  have hk2 : KJ 1 (setVarHOLFinite (nm "imm") (V w) { st with locals := u.locals }) :=
    kOK_KJ.congr _ _ _ hk1 hm hg hd hbe
  refine hoareG_kPureX (pureX_decode_single guestCtx_code)
    (P := fun s => s = setVarHOLFinite (nm "imm") (V w) { st with locals := u.locals }) (d := 1)
    (fun u' hu' => hu' ▸ hk2) ?_
  intro u2 hu2 vs2 hvs2 callee2 v2 st2 hm2 hg2 hd2 hbe2 hRv2 hsh2
  subst hu2
  obtain ⟨w2, rfl, hw2⟩ := hRv2
  set uA := setVarHOLFinite (nm "imm") (V w) { st with locals := u.locals } with huA
  set uB := setVarHOLFinite (nm "n") (V w2) { st2 with locals := uA.locals } with huB
  have hk3 : KJ 1 uB := kOK_KJ.congr _ _ _ hk2 hm2 hg2 hd2 hbe2
  have hn : ev uB (lv (nm "n")) = some (V w2) := Struct.ev_lv_set _ _ _
  refine hoareG_seq (R := fun ro s => (ro = none → s = uB ∧ ev s (.cmp .lower (gLoad "ev" 16)
      (.op .add [lv (nm "n"), cw 1])) = some (.val (.word 0))) ∧
      ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) s)
    (hoareG_ite ?_ ?_) (fun r t' _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩) ?_
  · refine hoareG_pt fun t' ⟨ht', _⟩ => ?_
    rw [ht']
    refine hoareG_raise fun s _ hs w _ => ?_
    subst hs
    refine ⟨fun h0 => (by cases h0), fun r hr _ => ?_⟩
    cases hr
    exact kOK_KJ.congr _ _ _ (kOK_KJ.mono _ _ _ hk3 (Nat.zero_le _)) rfl rfl rfl rfl
  · exact hoareG_skip fun s _ ⟨hs, hc⟩ => ⟨fun _ => ⟨hs, hc⟩, fun r hr => by cases hr⟩
  refine hoareG_pt fun t' ht' => ?_
  obtain ⟨ht3, hc⟩ := ht'.1 rfl
  rw [ht3] at hc ⊢
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
  have hle := Struct.cmp_lower_false hxy
  rw [ev_add2 hn (ev_cw _ 1)] at hy
  cases hy
  have hw2' : (w2 + BitVec.ofNat 64 1).toNat = w2.toNat + 1 := by
    rw [BitVec.toNat_add]
    have : (BitVec.ofNat 64 1).toNat = 1 := rfl
    rw [this]
    have := w2.isLt
    omega
  rw [hw2'] at hle
  refine hoareG_swapStep hfs hk3 (aE := cw 0) (bE := lv (nm "n")) (i := BitVec.ofNat 64 0) (j := w2)
    (ev_cw _ 0) hn hx ?_ ?_ ?_
  · have : (BitVec.ofNat 64 0).toNat = 0 := rfl
    omega
  · omega
  · exact hoareG_pt fun t ⟨u, hu, hl, hK, _⟩ =>
      gc_sound kOK_KJ (callSem_gE hfs) _ true true swpnTail_gc t hK

end steps

/-- **`op_swapn`'s step spec** at `guestHooksR`. -/
theorem j_op_swapn : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_swapn") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_swapn) :=
    declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 521) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStep guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hk0
  rw [swpnBody_eq]
  exact swpn_core hfs hk0

end InitECandidate.Solver.MemSafe.Ops4

#print axioms InitECandidate.Solver.MemSafe.Ops4.hoareG_swapStep
#print axioms InitECandidate.Solver.MemSafe.Ops4.j_op_swapn
