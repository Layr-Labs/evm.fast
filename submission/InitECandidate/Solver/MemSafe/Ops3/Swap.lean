import InitECandidate.Solver.MemSafe.Ops3.CopyBuf
import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem capsOK_swap : capsOK guestC Struct.sgSwap [Shards.capEv []] = true := by decide

/-- **`stack_swap_positions` at `guestHooksR`.** -/
theorem swap_sumSpec :
    SumSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "stack_swap_positions") Struct.sgSwap
      (fun vs s Γ => Struct.SwapPre Shards.sty vs s Γ ∧ ReqOK [Shards.capEv []] s Γ)
      (fun _ _ _ _ => False) Struct.SwapQ :=
  sumSpec_of_upg capsOK_swap
    (Struct.sum_stack_swap_positions guestCtx_code Hooks.guestHooksR_lawful
      (Shards.evCfg_upg []) (Shards.evHook_upg Hooks.guestHooksR_ev))

theorem swap_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "stack_swap_positions") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)

def swpBody : ProgHOL 64 :=
  .seq (callD (nm "charge_gas") [cw 3])
  (.seq (.ite (.cmp .notLower (lv (nm "item")) (gLoad "ev" 16))
      (.raise (nm "EvmErr") (cw 2)) .skip)
  (.seq (callD (nm "stack_swap_positions") [cw 0, lv (nm "item")])
    (.seq (callD (nm "pc_add") [cw 1]) Struct.rz)))

theorem swpBody_eq : (declPair Guest.Software.guestFn_op_swap).2.2 = swpBody := by
  conv => lhs; cbv
  rfl


def swpTail : ProgHOL 64 := .seq (callD (nm "pc_add") [cw 1]) Struct.rz
theorem swpTail_gc : gc gE true swpTail = some true := by decide +kernel

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

/-- `hoareG_gkSumm` for a summary with a precondition (and no protected writes). -/
theorem hoareG_gkSummP (hfs : fs = (e, c) :: rest) {f : MlS} {sg : Sig} (hgw : sg.gw = [])
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hS : SumSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) f sg Pre
      (fun _ _ _ _ => False) Q) (hfp : KeepsFp σ guestCtx f)
    {args : List (ExpHOL 64)} {k : ProgHOL 64} {P : State σ → Prop} {d : Nat} {b' : Bool}
    (hP0 : ∀ u, P u → KJ d u ∧ ∀ vs, evs u args = some vs → ∀ Γ1 p1,
      G guestC (Hooks.guestHooksR (σ := σ)) Γ1 u → ptrsOf u = some p1 →
      ChainL guestC tEV tCK Γ1 u fs → ArgsOK guestC Γ1 p1 sg.params vs ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite u callee) Γ1)
    (hk : HoareG σ guestCtx (fun t => ∃ u, P u ∧ t.locals = u.locals ∧ KJ d t ∧
        ∀ j ∈ evProtSlots, fld t.memory e (8 * j) = fld u.memory e (8 * j)) k (GQ (KJ) b')) :
    HoareG σ guestCtx P (.seq (callD f args) k) (GQ (KJ) b') := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have key : ∀ u, P u → ∀ vs, evs u args = some vs → ∀ callee r st,
      (SumRelX guestC Hooks.guestHooksR sg Pre
        (fun vs s Γ a => ProtCell guestC Γ a ∧ False) Q vs
        (callEntryStateHOLFinite u callee) r st ∧
        (Good (some r) → ¬ Abortive r →
          st.globals.lookup gFrame = (callEntryStateHOLFinite u callee).globals.lookup gFrame)) →
      Good (some r) → ¬ Abortive r →
      KJ d st ∧ ∀ j ∈ evProtSlots, fld st.memory e (8 * j) = fld u.memory e (8 * j) := by
    intro u hu vs hvs callee r st ⟨hR, hfk⟩ hg hna
    obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ0, hact0⟩ := (hP0 u hu).1
    obtain ⟨hargs, hpre⟩ := (hP0 u hu).2 vs hvs Γ1 p1 hrun.2.2.2.2.2.1 hrun.2.1 hch
    obtain ⟨Γ2, p2, hrun2, hch2, hE2, hΦ2, hJ2, hact2, -, hkE, -⟩ := kc_coreK hF hfs (sg := sg)
      (ks := []) (fun g h => by rw [hgw] at h; cases h) (by rw [hgw]; simp)
      (by rw [hgw]; simp [jrOut_iff]) (by decide) (by decide) (by decide) hrun hch hE hJ hR
      (hfk hg hna) hg hna hargs (hpre callee) (fun a _ h => h.elim)
      (Or.inl ⟨by decide, by decide⟩) (Or.inl ⟨by decide, by decide⟩)
    refine ⟨⟨⟨hJ2, Γ2, p2, hrun2, hch2, hE2⟩, by omega, ?_⟩, fun j hj => hkE j hj (by simp)⟩
    rw [hact2]; rcases hact0 with h | h
    · exact Or.inl h
    · exact Or.inr (by omega)
  refine hoareG_seq (R := fun ro t => (ro = none → ∃ u, P u ∧ t.locals = u.locals ∧ KJ d t ∧
        ∀ j ∈ evProtSlots, fld t.memory e (8 * j) = fld u.memory e (8 * j)) ∧
      ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) t)
    (hoareG_callD (FunSpec.and (sumSpecA_relX (sumSpecA_of_sumSpec hS)) hfp) ?_ ?_)
    (fun r t _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩) (hoareG_pre hk fun t _ h => h.1 rfl)
  · intro u _ hu vs hvs callee v st hR _
    obtain ⟨hk1, hk2⟩ := key u hu vs hvs callee _ st hR (by simp [Good]) (not_abortive_ret v)
    exact ⟨fun _ => ⟨u, hu, rfl, kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl, hk2⟩, fun r hr => by cases hr⟩
  · intro u _ hu vs hvs callee r st hR _ habn
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    obtain ⟨hk1, -⟩ := key u hu vs hvs callee _ st hR (good_of_abn habn) hna
    rw [rbd_abn habn]
    exact kOK_KJ.mono _ _ _ (kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl) (Nat.zero_le _)

def swpCond : ExpHOL 64 := .cmp .notLower (lv (nm "item")) (gLoad "ev" 16)

theorem swp_core (hfs : fs = (e, c) :: rest) {u0 : State σ} (hk0 : KJ 0 u0) :
    HoareG σ guestCtx (fun t => t = u0) swpBody (GQ (KJ) true) := by
  unfold swpBody
  refine hoareG_gkCallC hfs chg3_cl hk0 fun t1 hl1 hk1 => ?_
  refine hoareG_seq (R := fun ro s => (ro = none → s = t1 ∧ ev s swpCond = some (.val (.word 0))) ∧
      ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) s)
    (hoareG_ite ?_ ?_) (fun r t' _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩) ?_
  · refine hoareG_pt fun t' ⟨ht', _⟩ => ?_
    rw [ht']
    refine hoareG_raise fun s _ hs w _ => ?_
    subst hs
    refine ⟨fun h0 => (by cases h0), fun r hr _ => ?_⟩
    cases hr
    exact kOK_KJ.congr _ _ _ (kOK_KJ.mono _ _ _ hk1 (Nat.zero_le _)) rfl rfl rfl rfl
  · exact hoareG_skip fun s _ ⟨hs, hc⟩ => ⟨fun _ => ⟨hs, hc⟩, fun r hr => by cases hr⟩
  refine hoareG_pt fun t' ht' => ?_
  obtain ⟨ht3, hc⟩ := ht'.1 rfl
  rw [ht3] at hc ⊢
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
  have hlt := Struct.cmp_notLower_false hxy
  have hE : t1.globals.lookup Struct.gEv = some (.val (.word e)) :=
    AllocImpl.lookup_of_gword (gk_gword hfs hk1)
  have hyv : y = rd t1.memory (e + BitVec.ofNat 64 16) := by
    have := (Struct.ev_evL hE hy).1
    simpa using this
  refine hoareG_gkSummP hfs (sg := Struct.sgSwap) rfl swap_sumSpec swap_fp
    (P := fun s => s = t1) (d := 1) ?_ ?_
  · intro u hu
    subst hu
    refine ⟨hk1, fun vs hvs Γ1 p1 hG hp hch => ⟨argsOK_any (by simp [Struct.sgSwap])
      (by rw [evs_len hvs]; rfl), fun callee => ?_⟩⟩
    obtain ⟨v0, vs0, rfl, hv0, h0⟩ := evs_cons_inv hvs
    obtain ⟨v1, vs1, rfl, hv1, h1⟩ := evs_cons_inv h0
    have hz := evs_zero h1
    subst hz
    rw [ev_cw] at hv0
    rw [hx] at hv1
    simp only [Option.some.injEq] at hv0 hv1
    subst hv0; subst hv1
    obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
    subst hob
    refine ⟨⟨BitVec.ofNat 64 0, x, rfl, fun e' he' => ?_⟩, fun c' hc' _ => ?_⟩
    · have hb := evObj_base hevo he'
      have hSP : (Struct.fSP (callEntryStateHOLFinite u callee).memory e') = y := by
        unfold Struct.fSP
        rw [Struct.cells_base hb, hyv]
        rfl
      rw [hSP]
      refine ⟨?_, hlt⟩
      have : (BitVec.ofNat 64 0).toNat = 0 := rfl
      omega
    · simp only [List.mem_cons, List.not_mem_nil, or_false] at hc'
      subst hc'
      exact ⟨o, hevo.1, hevo.2.1, hevo.2.2⟩
  · exact hoareG_pt fun t ⟨u, hu, hl, hK, _⟩ =>
      gc_sound kOK_KJ (callSem_gE hfs) _ true true swpTail_gc t hK

end steps


/-- **`op_swap`'s step spec.** -/
theorem j_op_swap : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_swap") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_swap) :=
    declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 517) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStep guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hk0
  rw [swpBody_eq]
  exact swp_core hfs hk0

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_gkSummP
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_swap
