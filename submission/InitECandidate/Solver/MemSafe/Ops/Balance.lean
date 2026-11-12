import InitECandidate.Solver.MemSafe.Ops.AddrSpecs
import InitECandidate.Solver.MemSafe.Ops.SelfBalance
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_balance` (sonnet-ops), and the shared address prefix of the account handlers

```
var av = stack_pop(); var 1 addr = to_address_masked(av); var 1 c = access_gas_cost(addr);
charge_gas(c); warm_after_charge(addr, c); var 1 a = get_account(addr); ...
```
`addrPrefix` runs the first three declarations and hands the tail the facts it needs:
`addr = ev + 240` (a writable 20-byte block, `evAddr_bufOK`) and `c ∈ {100, 3000}`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-- A statement call `f(args);` of a fold-table callee with buffer parameters. -/
theorem hl_callA {f : MlS} {sg : Sig} {cs : List Cap}
    (hmem : (f, sg, cs) ∈ ShardsJL.tab26) (hfpm : KeepsFp σ guestCtx f)
    {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
    {rest : List Frame} (hfs : fs = (e, c) :: rest) {args : List (ExpHOL 64)}
    {E : GEnv} (hok : PlainOKB E f sg cs args.length) (hgwE : ∀ g ∈ E.gw, g ∈ gw) {b : Bool}
    {u0 : State σ} (hu : GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs (bd b) u0)
    (hA : ∀ vs, evs u0 args = some vs → ∀ (Γ1 : Gam) (p1 : Ptrs),
      RunT guestC (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 Γ1 u0 p0 p1 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs → ArgsOK guestC Γ1 p1 sg.params vs) :
    HoareG σ guestCtx (fun t => t = u0) (callD f args)
      (HL (GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs) b u0.locals) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := gw) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hspec := tabJL_guestR (σ := σ) f sg cs hmem
  refine hoareG_callD (R := fun vs s r t => SumRelX guestC (Hooks.guestHooksR (σ := σ)) sg
      (fun _ s Γ => ReqOK cs s Γ)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW cs s Γ a) (fun _ _ _ _ _ _ => True) vs s r t ∧
      (Good (some r) → ¬ Abortive r → t.globals.lookup gFrame = s.globals.lookup gFrame))
    (FunSpec.and (sumSpecA_relX hspec) hfpm) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _
    subst hs
    have hg : Good (some (.returned v)) := by simp [Good]
    have hk := gk_plainA hF hfs hgwE hok hu hvs (hA vs hvs) hR (hfk hg (not_abortive_ret v)) hg
      (not_abortive_ret v)
    exact ⟨⟨fun _ => hK.congr _ st _ hk rfl rfl rfl rfl, fun r hr => by cases hr⟩, fun _ => rfl⟩
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    refine ⟨⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩, fun h0 => by cases h0⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have hk := gk_plainA hF hfs hgwE hok hu hvs (hA vs hvs) hR (hfk (good_of_abn habn) hna)
      (good_of_abn habn) hna
    rw [rbd_abn habn]
    exact hK.congr _ st _ (hK.mono _ _ _ hk (Nat.zero_le _)) rfl rfl rfl rfl

/-- The address block `ev + 240` fits a `.buf 20` parameter (and `any` ones) on a `GK` run. -/
theorem addr_bufOK {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest) {u0 : State σ}
    {Γ1 : Gam} {p1 : Ptrs} (hrun : RunT guestC (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 Γ1 u0 p0 p1)
    (hch : ChainL guestC tEV tCK Γ1 u0 fs) :
    BufOK guestC Γ1 p1 (e + BitVec.ofNat 64 240).toNat 20 := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨o, hevo, hob⟩ := evRun_of_chainL (hfs ▸ hch)
  have := evAddr_bufOK hF hrun.2.2.2.2.2.1 hrun.2.1 hevo
  rw [hob] at this
  exact this

def opsBE : GEnv := ⟨[], [nm "get_account", nm "warm_after_charge", nm "ext_code_of"], [Hooks.gJn]⟩
def wamSg : Sig := ⟨[.buf 20, .any], [], [], true⟩

theorem wam_mem : (nm "warm_after_charge", wamSg, gaCs) ∈ ShardsJL.tab26 := by decide +kernel
theorem wam_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "warm_after_charge") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)
theorem opsBE_wam : PlainOKB opsBE (nm "warm_after_charge") wamSg gaCs 2 := by decide +kernel
theorem opsBE_ga : PlainOKB opsBE (nm "get_account") gaSg gaCs 1 := by decide +kernel

/-- The declarations `av`, `addr`, `c` shared by the account handlers. -/
def opsPfx (T : ProgHOL 64) : ProgHOL 64 :=
  .decCall (nm "av") (shK 4) (nm "stack_pop") []
    (.decCall (nm "addr") .one (nm "to_address_masked") [lv (nm "av")]
      (.decCall (nm "c") .one (nm "access_gas_cost") [lv (nm "addr")] T))

theorem opsPfx_pop : callCl opsE false (nm "stack_pop") [] = some false := by decide +kernel
theorem opsPfx_tam : callCl opsE false (nm "to_address_masked") [lv (nm "av")] = some false := by
  decide +kernel
theorem opsPfx_agc : callCl opsE false (nm "access_gas_cost") [lv (nm "addr")] = some false := by
  decide +kernel

/-- **The shared prefix**: the tail `T` sees `addr = ev + 240` and `c ∈ {100, 3000}`. -/
theorem addrPrefix {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
    {rest : List Frame} (hfs : fs = (e, c) :: rest) {T : ProgHOL 64} {b' : Bool} {u0 : State σ}
    (hu : GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs (bd false) u0)
    (hT : ∀ (t : State σ) (cv : BitVec 64),
      GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs (bd false) t →
      t.locals.lookup (nm "addr") = some (.val (.word (e + BitVec.ofNat 64 240))) →
      t.locals.lookup (nm "c") = some (.val (.word cv)) →
      (cv = BitVec.ofNat 64 100 ∨ cv = BitVec.ofNat 64 3000) →
      HoareG σ guestCtx (fun s => s = t) T
        (GQ (GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs) b')) :
    HoareG σ guestCtx (fun t => t = u0) (opsPfx T)
      (GQ (GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs) b') := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hC := callSem_opsE (σ := σ) (Γ0 := Γ0) (s0 := s0) (p0 := p0) hfs
  refine hl_decCall hK hC opsPfx_pop hu ?_
  intro t ht hloc v hsh
  have hS1 : GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs (bd false)
      (setVarHOLFinite (nm "av") v t) := kok_loc hK ht _
  refine hl_decCallV hK hC tam_spec opsPfx_tam hS1 ?_
  intro t2 ht2 hloc2 v2 hsh2 hRv
  obtain ⟨vs, callee, st, hvs, hR⟩ := hRv
  obtain ⟨G, hG, rfl⟩ := hR (by simp [Good]) v2 rfl
  have hGe : gword (setVarHOLFinite (nm "av") v t) nmEv = some e := gk_gword hfs hS1
  have hGG : G = e := Option.some.inj (hG.symm.trans hGe)
  subst hGG
  have hS2 : GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs (bd false)
      (setVarHOLFinite (nm "addr") (.val (.word (G + BitVec.ofNat 64 240))) t2) := kok_loc hK ht2 _
  refine hl_decCallV hK hC agc_spec opsPfx_agc hS2 ?_
  intro t3 ht3 hloc3 v3 hsh3 hRv3
  obtain ⟨vs3, callee3, st3, hvs3, hR3⟩ := hRv3
  have hv3 := hR3 (by simp [Good]) v3 rfl
  have hlA : t3.locals.lookup (nm "addr") = some (.val (.word (G + BitVec.ofNat 64 240))) := by
    rw [hloc3]; exact lk_set_self _ _ _
  have hlA' : (setVarHOLFinite (nm "c") v3 t3).locals.lookup (nm "addr") =
      some (.val (.word (G + BitVec.ofNat 64 240))) := by
    rw [lk_set_ne _ _ (by decide)]; exact hlA
  have hS3 : GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs (bd false)
      (setVarHOLFinite (nm "c") v3 t3) := kok_loc hK ht3 _
  rcases hv3 with rfl | rfl
  · exact hT _ _ hS3 hlA' (lk_set_self _ _ _) (Or.inl rfl)
  · exact hT _ _ hS3 hlA' (lk_set_self _ _ _) (Or.inr rfl)

/-- A `[lv addr, ...]` argument list whose `addr` is `ev + 240` fits `[.buf 20, ...]`. -/
theorem addr_argsOK1 {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest) {u : State σ}
    (hlA : u.locals.lookup (nm "addr") = some (.val (.word (e + BitVec.ofNat 64 240))))
    {vs : List (ValueHOL 64)} (hvs : evs u [lv (nm "addr")] = some vs) {Γ1 : Gam} {p1 : Ptrs}
    (hrun : RunT guestC (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 Γ1 u p0 p1)
    (hch : ChainL guestC tEV tCK Γ1 u fs) : ArgsOK guestC Γ1 p1 [.buf 20] vs := by
  have h1 : evs u [lv (nm "addr")] = some [.val (.word (e + BitVec.ofNat 64 240))] :=
    evs_cons (by rw [ev_lv]; exact hlA) evs_nil
  rw [h1] at hvs
  cases hvs
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    exact ⟨_, rfl, addr_bufOK hfs hrun hch⟩
  · simp at hpt

theorem addr_argsOK2 {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest) {u : State σ} {cv : BitVec 64}
    (hlA : u.locals.lookup (nm "addr") = some (.val (.word (e + BitVec.ofNat 64 240))))
    (hlC : u.locals.lookup (nm "c") = some (.val (.word cv)))
    {vs : List (ValueHOL 64)} (hvs : evs u [lv (nm "addr"), lv (nm "c")] = some vs) {Γ1 : Gam}
    {p1 : Ptrs} (hrun : RunT guestC (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 Γ1 u p0 p1)
    (hch : ChainL guestC tEV tCK Γ1 u fs) : ArgsOK guestC Γ1 p1 [.buf 20, .any] vs := by
  have h1 : evs u [lv (nm "addr"), lv (nm "c")] =
      some [.val (.word (e + BitVec.ofNat 64 240)), .val (.word cv)] :=
    evs_cons (by rw [ev_lv]; exact hlA) (evs_cons (by rw [ev_lv]; exact hlC) evs_nil)
  rw [h1] at hvs
  cases hvs
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    exact ⟨_, rfl, addr_bufOK hfs hrun hch⟩
  · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    trivial
  · simp at hpt

theorem charge_c_pos {t : State σ} {cv : BitVec 64}
    (hlC : t.locals.lookup (nm "c") = some (.val (.word cv)))
    (hcv : cv = BitVec.ofNat 64 100 ∨ cv = BitVec.ofNat 64 3000) :
    ∀ a, ev t (lv (nm "c")) = some (.val (.word a)) → 1 ≤ a.toNat := by
  intro a ha
  rw [ev_lv, hlC] at ha
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at ha
  subst ha
  rcases hcv with rfl | rfl <;> decide

def balT : ProgHOL 64 :=
  .seq (callD (nm "charge_gas") [lv (nm "c")])
    (.seq (callD (nm "warm_after_charge") [lv (nm "addr"), lv (nm "c")])
      (.decCall (nm "a") .one (nm "get_account") [lv (nm "addr")] selfbalTail))

def balBody : ProgHOL 64 := opsPfx balT

theorem balBody_eq : (declPair Guest.Software.guestFn_op_balance).2.2 = balBody := by
  conv => lhs; cbv
  rfl

/-- **`op_balance`'s step spec.** -/
theorem j_op_balance : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_balance") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_balance) :=
    declPair_valid (List.getElem_mem (n := 532) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStep guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hk0
  rw [balBody_eq]
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hC := callSem_opsE (σ := σ) (Γ0 := Γ0) (s0 := s0) (p0 := p0) hfs
  refine addrPrefix hfs hk0 ?_
  intro t cv ht hlA hlC hcv
  refine hl_seq_last (b1 := true) (hl_chargeDyn hF charge_fp hfs ht (charge_c_pos hlC hcv)) ?_
  intro u hu hlu
  have hlA' : u.locals.lookup (nm "addr") = some (.val (.word (e + BitVec.ofNat 64 240))) := by
    rw [hlu]; exact hlA
  have hlC' : u.locals.lookup (nm "c") = some (.val (.word cv)) := by rw [hlu]; exact hlC
  refine hl_seq_last (b1 := true) (hl_callA wam_mem wam_fp hfs opsBE_wam (fun g h => h) hu
    (fun vs hvs Γ1 p1 hrun hch _ => addr_argsOK2 hfs hlA' hlC' hvs hrun hch)) ?_
  intro u2 hu2 hlu2
  have hlA2 : u2.locals.lookup (nm "addr") = some (.val (.word (e + BitVec.ofNat 64 240))) := by
    rw [hlu2]; exact hlA'
  refine hl_decCallA ga_mem ga_fp hfs opsBE_ga (fun g h => h) hu2
    (fun vs hvs Γ1 p1 hrun hch _ => addr_argsOK1 hfs hlA2 hvs hrun hch) ?_
  intro t' ht' _ v _
  exact gc_sound hK hC _ true true selfbal_tail _ (kok_loc hK ht' _)

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_balance
