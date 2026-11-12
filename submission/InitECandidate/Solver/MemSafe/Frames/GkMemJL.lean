import InitECandidate.Solver.MemSafe.Frames.GkMem
import InitECandidate.Solver.MemSafe.Frames.GkHoare
import InitECandidate.Solver.MemSafe.Frames.PreWire
import InitECandidate.Solver.MemSafe.Struct.CWM
import InitECandidate.Solver.MemSafe.HtabEntries.NoExcHtab
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `extend_memory` and `charge_with_memory` on the `run_frames` chain (frames12, task 1)

The guest summaries (`Struct.sum_extend_memory`, `Struct.sum_charge_with_memory`, instantiated
under `upg guestC [capEv ks]` and moved back with `sumSpec_of_upg`) and two facts about
non-returning results (`noExc_extend_memory`: every good result is a return or abortive;
`cwm_exc`: a non-abortive, non-returning `charge_with_memory` leaves memory and globals as they
were — only `charge_gas` can raise). With `kc_coreM` they give the two `GK` steps:

* **`gk_em`**: `extend_memory(x)` from `GK d` (with `x % 32 = 0` and no `2^40` overflow) returns,
  keeps `GK d`, sets `MEM_LEN += x` and keeps `EV_MEM`;
* **`gk_cwm`**: `charge_with_memory(base, start, size)` from `GK d`, when `Φ s0 < 2^64` (so the
  running frame's `GAS_LEFT ≠ WORD_MAX`): a return gives `GK (d + base)`, the range
  `[start, start + size)` below the new `MEM_LEN` (if `size ≠ 0`) and `EV_MEM` kept; any other
  non-abortive result keeps `GK d`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-! ## Only returns or aborts -/

theorem xchk_frame_mem_alloc :
    xChk HtabEntries.htabX false (declPair Guest.Software.guestFn_frame_mem_alloc).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_frame_mem_alloc : NoExc σ guestCtx (nm "frame_mem_alloc") :=
  HtabEntries.noExc_of_pair (HtabEntries.noExc_htabX guestCtx_code) guestCtx_code
    (p := declPair Guest.Software.guestFn_frame_mem_alloc)
    (declPair_valid (List.getElem_mem (n := 10) (by decide)) ⟨_, rfl⟩) xchk_frame_mem_alloc

theorem xchk_extend_memory :
    xChk (nm "frame_mem_alloc" :: nm "memzero" :: HtabEntries.htabX) false
      (declPair Guest.Software.guestFn_extend_memory).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

/-- Every good result of `extend_memory` is a return or abortive. -/
theorem noExc_extend_memory : NoExc σ guestCtx (nm "extend_memory") :=
  HtabEntries.noExc_of_pair
    (noExcTab_cons (noExcTab_cons (HtabEntries.noExc_htabX guestCtx_code)
      (Pre.noExc_memzero guestCtx_code)) noExc_frame_mem_alloc) guestCtx_code
    (p := declPair Guest.Software.guestFn_extend_memory)
    (declPair_valid (List.getElem_mem (n := 460) (by decide)) ⟨_, rfl⟩) xchk_extend_memory

/-! ## The guest summaries -/

section sums
variable {H : Hooks σ}

theorem frameCfg_upg (hF : FrameCfg guestC H tEV tCK) (ks : List Nat) :
    FrameCfg (upg guestC [Shards.capEv ks]) H tEV tCK where
  hooks := hF.hooks
  ne := hF.ne
  evSz := hF.evSz
  ckSz := hF.ckSz
  evProt := hF.evProt
  ckProt := hF.ckProt
  evDriver := hF.evDriver
  hookEV := hF.hookEV
  hookCK := hF.hookCK
  pgEv := hF.pgEv
  pgCC := hF.pgCC
  evK := hF.evK
  ev16 := hF.ev16
  ckK := hF.ckK
  blkHeap := hF.blkHeap
  evL := hF.evL
  ckL := hF.ckL
  lstSz := hF.lstSz
  empty := by
    obtain ⟨k, hk⟩ := hF.empty
    exact ⟨k, by rw [lookup_upg_of (fun c hc _ => Shards.upg_ev_ne (by decide) c hc)]; exact hk⟩

/-- `charge_gas`'s post in `Struct.ChargeOK`'s form. -/
def QChS (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  Γ' = Γ ∧ ptrsOf t = ptrsOf s ∧ t.globals = s.globals ∧
    ∃ e a, gword s nmEv = some e ∧ vs = [.val (.word a)] ∧
      ((r = .exception nmEvmErr (.val (.word 4)) ∧ fld s.memory e 64 < a ∧ t.memory = s.memory) ∨
        (r = .returned (.val (.word 0)) ∧ a ≤ fld s.memory e 64 ∧
          t.memory = chargeMem s.memory e a))

theorem fld_charge64 (m : Mem) (e a : BitVec 64) : fld (chargeMem m e a) e 64 = fld m e 64 - a := by
  unfold chargeMem fld
  rw [rd_upd, if_neg (off_ne e (by decide) (by decide) (by decide)), rd_upd, if_pos rfl]

theorem chargeOK_upg (hF : FrameCfg guestC H tEV tCK) (ks : List Nat) :
    Struct.ChargeOK σ guestCtx (upg guestC [Shards.capEv ks]) H Shards.sty sg1n
      (fun _ s Γ => ∃ e, EvRun tEV Γ s e) (PWrun tEV [8, 23]) QChS where
  spec := charge_evSpec guestCtx_code (frameCfg_upg hF ks)
  params := rfl
  gw := fun g _ h => by simp [sg1n] at h
  pre := fun vs s Γ e ⟨he, het, hg⟩ => ⟨e, he, het, by
    show gword s nmEv = _; unfold gword; rw [show nmEv = Struct.gEv from rfl, hg]⟩
  pw := fun vs s Γ a ⟨e, ⟨he, het, hg⟩, k, hk, ha⟩ => by
    refine ⟨e, ⟨he, het, gword_some hg⟩, ?_⟩
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hk
    rcases hk with rfl | rfl
    · exact Or.inl ha
    · exact Or.inr ha
  q := fun vs s Γ r t Γ' ⟨hΓ, _, hgl, e, a, he, hvs, hcase⟩ => by
    refine ⟨hΓ, hgl, fun e' a' ⟨_, _, he'⟩ hvs' => ?_⟩
    have hb : e'.base = e := by
      have : gword s nmEv = some e'.base := by unfold gword; rw [show nmEv = Struct.gEv from rfl, he']
      exact Option.some.inj (this.symm.trans he)
    subst hb
    rw [hvs] at hvs'
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs'
    subst hvs'
    have hc8 : ∀ m : Mem, rd m (e'.cell 8) = fld m e'.base 64 := fun m => rfl
    simp only [hc8]
    rcases hcase with ⟨hr, -, hm⟩ | ⟨hr, hle, hm⟩
    · rw [hm]; exact ⟨le_refl _, fun ⟨v, hv⟩ => by rw [hr] at hv; cases hv⟩
    · rw [hm, fld_charge64, BitVec.toNat_sub_of_le hle]
      have hle' : a.toNat ≤ (fld s.memory e'.base 64).toNat := hle
      exact ⟨by omega, fun _ => ⟨hle', by omega⟩⟩

theorem capsOK_em : capsOK guestC Struct.sgEM [Shards.capEv [4, 5]] = true := by decide
theorem capsOK_cwm : capsOK guestC Struct.sgCWM [Shards.capEv [4, 5, 8, 23]] = true := by decide

end sums

/-- **`extend_memory` at `guestHooksR`.** -/
theorem em_sumSpec :
    SumSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "extend_memory") Struct.sgEM
      (fun vs s Γ => Struct.EMPre Shards.sty vs s Γ ∧ ReqOK [Shards.capEv [4, 5]] s Γ)
      (Struct.PWev Shards.sty [4, 5]) (Struct.EMQ Shards.sty) :=
  sumSpec_of_upg capsOK_em
    (Struct.sum_extend_memory guestCtx_code Hooks.guestHooksR_lawful Hooks.guestHooksR_mono
      (Shards.evCfg_upg [4, 5]) (Shards.evHook_upg Hooks.guestHooksR_ev)
      (allocSpec_frame_mem_alloc guestCtx_code)
      (Helpers.summ_memzero Hooks.guestHooksR_lawful Helpers.tagSlots_guestC guestCtx_code
        (Rec.foldOK_guestR (σ := σ)).hal))

/-- **`charge_with_memory` at `guestHooksR`.** -/
theorem cwm_sumSpec :
    SumSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "charge_with_memory") Struct.sgCWM
      (fun vs s Γ => Struct.CWMPre Shards.sty vs s Γ ∧ ReqOK [Shards.capEv [4, 5, 8, 23]] s Γ)
      (Struct.PWev Shards.sty [4, 5, 8, 23]) (Struct.CWMQ Shards.sty) :=
  sumSpec_of_upg capsOK_cwm
    (Struct.sum_charge_with_memory guestCtx_code Hooks.guestHooksR_lawful Hooks.guestHooksR_mono
      (Shards.evCfg_upg [4, 5, 8, 23]) (Shards.evHook_upg Hooks.guestHooksR_ev)
      (allocSpec_frame_mem_alloc guestCtx_code)
      (Helpers.summ_memzero Hooks.guestHooksR_lawful Helpers.tagSlots_guestC guestCtx_code
        (Rec.foldOK_guestR (σ := σ)).hal)
      (chargeOK_upg Hooks.frameCfg_guestHooksR [4, 5, 8, 23]) (by decide))


/-! ## `charge_with_memory`'s non-returning results -/

/-- **A non-abortive, non-returning `charge_with_memory` changes neither memory nor globals**: only
`charge_gas` can raise (out of gas, before any write), `extend_memory` only returns or aborts. -/
theorem cwm_exc : FunSpec σ guestCtx (nm "charge_with_memory") (fun _ s r t => Good (some r) →
    ¬ Abortive r → (∀ v, r ≠ .returned v) → t.memory = s.memory ∧ t.globals = s.globals) := by
  refine funSpec_of_hoareG (R := fun _ s0 r t => ¬ Abortive r → (∀ v, r ≠ .returned v) →
    t.memory = s0.memory ∧ t.globals = s0.globals) fun vs body callee rs hl s0 _ hloc => ?_
  rw [guestCtx_code] at hl
  obtain ⟨ps', hps, -⟩ := lookupCode_k hl
  rw [Struct.code_charge_with_memory] at hps
  simp only [Option.some.injEq, Prod.mk.injEq] at hps
  obtain ⟨-, rfl, -⟩ := hps
  refine hoareG_pre (P := fun t => t.memory = s0.memory ∧ t.globals = s0.globals) ?_
    (fun t _ h => by subst h; exact ⟨rfl, rfl⟩)
  unfold Struct.cwmBody
  refine hoareG_decCall (Struct.pure_extend_memory_cost1 guestCtx_code) ?_ ?_
  · intro u _ ⟨hm, hgl⟩ vs _ callee v st hR _ _
    obtain ⟨hm1, hg1, -⟩ := hR (by simp [Good])
    refine hoareG_pre (P := fun t => t.memory = s0.memory ∧ t.globals = s0.globals) ?_
      (fun t _ ht => by subst ht; exact ⟨hm1.trans hm, hg1.trans hgl⟩)
    refine hoareG_conseq (Q := fun ro t => ∀ rr, ro = some rr → ¬ Abortive rr →
        (∀ v, rr ≠ .returned v) → t.memory = s0.memory ∧ t.globals = s0.globals) ?_
      (fun _ _ h => h) (fun _ _ _ _ h => h)
    refine hoareG_decCall (Struct.pure_add_sat guestCtx_code) ?_ ?_
    · intro u _ ⟨hm, hgl⟩ vs _ callee v st hR _ _
      obtain ⟨hm1, hg1, -⟩ := hR (by simp [Good])
      refine hoareG_pre (P := fun t => t.memory = s0.memory ∧ t.globals = s0.globals) ?_
        (fun t _ ht => by subst ht; exact ⟨hm1.trans hm, hg1.trans hgl⟩)
      refine hoareG_conseq (Q := fun ro t => ∀ rr, ro = some rr → ¬ Abortive rr →
          (∀ v, rr ≠ .returned v) → t.memory = s0.memory ∧ t.globals = s0.globals) ?_
        (fun _ _ h => h) (fun _ _ _ _ h => h)
      refine hoareG_seq (R := fun ro t => ro ≠ none → ∀ rr, ro = some rr → ¬ Abortive rr →
          (∀ v, rr ≠ .returned v) → t.memory = s0.memory ∧ t.globals = s0.globals)
        (hoareG_callD (charge_spec guestCtx_code) ?_ ?_) (fun r t _ hr _ h => h hr) ?_
      · intro _ _ _ _ _ _ _ _ _ _ h; exact absurd rfl h
      · intro u _ ⟨hm, hgl⟩ vs _ callee r st hR _ habn _ rr hrr _ _
        cases hrr
        obtain ⟨e, a, -, -, hg2, hcase⟩ := hR (abn_good habn)
        rcases hcase with ⟨-, -, hmm⟩ | ⟨hr, -, -⟩
        · exact ⟨hmm.trans hm, hg2.trans hgl⟩
        · exact absurd hr (Struct.abn_ne_ret habn _)
      · refine hoareG_seq (R := fun ro t => ro ≠ none → ∀ rr, ro = some rr → ¬ Abortive rr →
            (∀ v, rr ≠ .returned v) → t.memory = s0.memory ∧ t.globals = s0.globals)
          (hoareG_callD (noExc_extend_memory (σ := σ)) ?_ ?_) (fun r t _ hr _ h => h hr) ?_
        · intro _ _ _ _ _ _ _ _ _ _ h; exact absurd rfl h
        · intro u _ _ vs _ callee r st hR _ habn _ rr hrr hna hnr
          cases hrr
          rcases hR (abn_good habn) with ⟨v, rfl⟩ | habt
          · exact absurd rfl (hnr v)
          · exact absurd habt hna
        · exact hoareG_return fun u _ _ v _ rr hrr _ hnr => by cases hrr; exact absurd rfl (hnr v)
    · intro u _ _ vs _ callee r st hR _ habn
      obtain ⟨-, -, v, hv, -⟩ := hR (abn_good habn)
      exact absurd hv (Struct.abn_ne_ret habn v)
  · intro u _ _ vs _ callee r st hR _ habn
    obtain ⟨-, -, v, hv, -⟩ := hR (abn_good habn)
    exact absurd hv (Struct.abn_ne_ret habn v)

/-! ## The call relations -/

/-- The relation of an `extend_memory` call (summary, only returns or aborts, domain). -/
def EmRel (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) :
    Prop :=
  ((Good (some r) → ∀ Γ, G guestC Hooks.guestHooksR Γ s →
      (∃ p, ptrsOf s = some p ∧ ArgsOK guestC Γ p Struct.sgEM.params vs) →
      (Struct.EMPre Shards.sty vs s Γ ∧ ReqOK [Shards.capEv [4, 5]] s Γ) →
        ∃ Γ' p p', SumCore guestC Hooks.guestHooksR Struct.sgEM
          (fun a => ProtCell guestC Γ a ∧ Struct.PWev Shards.sty [4, 5] vs s Γ a) Γ s vs r t Γ' p p' ∧
          Struct.EMQ Shards.sty vs s Γ r t Γ') ∧
    (Good (some r) → (∃ v, r = .returned v) ∨ Abortive r)) ∧
  (t.memaddrs = s.memaddrs ∧ t.be = s.be)

theorem funSpec_em : FunSpec σ guestCtx (nm "extend_memory") EmRel :=
  FunSpec.and (FunSpec.and em_sumSpec noExc_extend_memory) (funSpec_dom _)

/-- The relation of a `charge_with_memory` call (summary, non-returning results, domain). -/
def CwmRel (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) :
    Prop :=
  ((Good (some r) → ∀ Γ, G guestC Hooks.guestHooksR Γ s →
      (∃ p, ptrsOf s = some p ∧ ArgsOK guestC Γ p Struct.sgCWM.params vs) →
      (Struct.CWMPre Shards.sty vs s Γ ∧ ReqOK [Shards.capEv [4, 5, 8, 23]] s Γ) →
        ∃ Γ' p p', SumCore guestC Hooks.guestHooksR Struct.sgCWM
          (fun a => ProtCell guestC Γ a ∧ Struct.PWev Shards.sty [4, 5, 8, 23] vs s Γ a) Γ s vs r t
            Γ' p p' ∧ Struct.CWMQ Shards.sty vs s Γ r t Γ') ∧
    (Good (some r) → ¬ Abortive r → (∀ v, r ≠ .returned v) →
      t.memory = s.memory ∧ t.globals = s.globals)) ∧
  (t.memaddrs = s.memaddrs ∧ t.be = s.be)

theorem funSpec_cwm : FunSpec σ guestCtx (nm "charge_with_memory") CwmRel :=
  FunSpec.and (FunSpec.and cwm_sumSpec cwm_exc) (funSpec_dom _)

/-! ## The `GK` steps -/

theorem gas_le_phi {Γ : Gam} {u : State σ} {e c : BitVec 64} {rest : List Frame}
    (hch : ChainL guestC tEV tCK Γ u ((e, c) :: rest)) : (fld u.memory e 64).toNat + 1 ≤ Phi u := by
  rw [phi_eq hch.chain, wsum_cons, wt_eq]; omega

theorem evKs_capEv (ks : List Nat) : evKs [Shards.capEv ks] = ks := by
  simp [evKs, Shards.capEv, CapEv, nmEv]

theorem capEv_ok (ks : List Nat) : ∀ c ∈ [Shards.capEv ks], CapEv c ∨ CapSt c := by
  intro c hc
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hc
  subst hc
  exact Or.inl ⟨rfl, rfl, rfl⟩

/-- The running EV object at a call entry, as `Struct.EvObj`. -/
theorem evObj_entry {Γ : Gam} {u : State σ} {callee : Locs} {o : Obj} (h : EvRun tEV Γ u o) :
    Struct.EvObj Shards.sty Γ (callEntryStateHOLFinite u callee) o :=
  ⟨h.1, h.2.1, gword_some (s := u) h.2.2⟩

theorem evObj_base {Γ : Gam} {u : State σ} {callee : Locs} {o e' : Obj} (h : EvRun tEV Γ u o)
    (h' : Struct.EvObj Shards.sty Γ (callEntryStateHOLFinite u callee) e') : e'.base = o.base := by
  have h0 : u.globals.lookup nmEv = some (.val (.word e'.base)) := h'.2.2
  have h1 : gword u nmEv = some e'.base := by unfold gword; rw [h0]
  exact Option.some.inj (h1.symm.trans h.2.2)

section steps
variable {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame}

/-- **`extend_memory(x)` on `GK`**: it returns, keeps `GK d`, adds `x` to `MEM_LEN`, and keeps
every other `prot` slot of the running EV. -/
theorem gk_em (hfs : fs = (e, c) :: rest) {d : Nat} {u0 : State σ}
    (hu : GK Hooks.guestHooksR gw Γ0 s0 p0 fs d u0) {x : BitVec 64} (hx32 : x.toNat % 32 = 0)
    (hxb : (fld u0.memory e 32).toNat + x.toNat ≤ 2 ^ 40) {callee : Locs}
    {r : PanSemResultExact 64} {st : State σ}
    (hR : EmRel [.val (.word x)] (callEntryStateHOLFinite u0 callee) r st)
    (hg : Good (some r)) (hna : ¬ Abortive r) :
    (∃ v, r = .returned v) ∧ GK Hooks.guestHooksR gw Γ0 s0 p0 fs d st ∧
      (fld st.memory e 32).toNat = (fld u0.memory e 32).toNat + x.toNat ∧
      (∀ j ∈ evProtSlots, j ∉ [4, 5] → fld st.memory e (8 * j) = fld u0.memory e (8 * j)) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨⟨hS, hX⟩, hD⟩ := hR
  have hret : ∃ v, r = .returned v := (hX hg).resolve_right hna
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ0, hact0⟩ := hu
  obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
  subst hob
  have hG1 := hrun.2.2.2.2.2.1
  have hGe : G guestC Hooks.guestHooksR Γ1 (callEntryStateHOLFinite u0 callee) :=
    (G_locFree hF.hooks u0 _ _).mpr hG1
  have hcont : ∀ p, ptrsOf (callEntryStateHOLFinite u0 callee) = some p →
      (fld u0.memory o.base 24).toNat + (fld u0.memory o.base 40).toNat = p.fp :=
    fun p hp => hch.topMem o.base c rest hfs p ((ptrsOf_congr rfl).symm.trans hp)
  obtain ⟨Γ2, p2, hrun2, hch2, hE2, hΦ2, hJ2, hact2, hQ, hkE, -⟩ := kc_coreM hF hfs
    (sg := Struct.sgEM) (ks := [4, 5])
    (Pre := fun vs s Γ => Struct.EMPre Shards.sty vs s Γ ∧ ReqOK [Shards.capEv [4, 5]] s Γ)
    (PW := Struct.PWev Shards.sty [4, 5]) (Q := Struct.EMQ Shards.sty) (vs := [.val (.word x)])
    (fun g h => by simp [Struct.sgEM] at h)
    (by simp [Struct.sgEM]) (by simp [Struct.sgEM, jrOut_iff]) (by decide) (by decide) (by decide)
    hrun hch hE hJ (fun hg' _ => hS hg') hg hna
    (argsOK_any (by simp [Struct.sgEM]) rfl)
    ⟨⟨x, rfl, hx32, fun e' he' => by
        have hb := evObj_base hevo he'
        refine ⟨?_, fun p hp => ?_⟩
        · show (rd u0.memory (e'.cell 4)).toNat + _ ≤ _
          rw [Struct.cells_base hb]; exact hxb
        · show (rd u0.memory (e'.cell 3)).toNat + (rd u0.memory (e'.cell 5)).toNat = _
          rw [Struct.cells_base hb, Struct.cells_base hb]; exact hcont p hp⟩,
      fun c' hc' _ => by
        simp only [List.mem_cons, List.not_mem_nil, or_false] at hc'
        subst hc'
        exact ⟨o, hevo.1, hevo.2.1, hevo.2.2⟩⟩
    (fun a _ hw => by
      have := capPW_cs (vs := [.val (.word x)]) hF hGe (capEv_ok [4, 5]) (by decide)
        (Shards.pwev_cap hw)
      rwa [evKs_capEv] at this)
    (fun Γ2 hq p' hp' => by
      obtain ⟨-, h2⟩ := hq o x (evObj_entry hevo) rfl
      exact (h2 hret).2 p' hp')
    (Or.inl (by decide))
  obtain ⟨hmem, h2⟩ := hQ o x (evObj_entry hevo) rfl
  obtain ⟨hlen, -⟩ := h2 hret
  have k8 := hkE 8 (by simp [evProtSlots]) (by decide)
  have k24 := hkE 24 (by simp [evProtSlots]) (by decide)
  simp only [show (8 * 8 : Nat) = 64 from rfl, show (8 * 24 : Nat) = 192 from rfl] at k8 k24
  rw [k8, k24] at hΦ2
  refine ⟨hret, ⟨⟨hJ2, Γ2, p2, hrun2, hch2, hE2⟩, by omega, ?_⟩, hlen, fun j hj hk => hkE j hj hk⟩
  rw [hact2]; rcases hact0 with h | h
  · exact Or.inl h
  · exact Or.inr (by omega)

/-- **`charge_with_memory(base, start, size)` on `GK`** (`Φ s0 < 2^64` gives `GAS_LEFT ≠ WORD_MAX`). -/
theorem gk_cwm (hfs : fs = (e, c) :: rest) (hP : Phi s0 < 2 ^ 64) {d : Nat} {u0 : State σ}
    (hu : GK Hooks.guestHooksR gw Γ0 s0 p0 fs d u0)
    {base a0 a1 a2 a3 b0 b1 b2 b3 : BitVec 64} {callee : Locs} {r : PanSemResultExact 64}
    {st : State σ}
    (hR : CwmRel [.val (.word base), wv [a0, a1, a2, a3], wv [b0, b1, b2, b3]]
      (callEntryStateHOLFinite u0 callee) r st)
    (hg : Good (some r)) (hna : ¬ Abortive r) :
    (∀ v, r = .returned v → GK Hooks.guestHooksR gw Γ0 s0 p0 fs (d + base.toNat) st ∧
      (Struct.isZeroF b0 b1 b2 b3 = 0 → (Struct.satWordF a0 a1 a2 a3).toNat +
        (Struct.satWordF b0 b1 b2 b3).toNat ≤ (fld st.memory e 32).toNat) ∧
      fld st.memory e 24 = fld u0.memory e 24) ∧
    ((∀ v, r ≠ .returned v) → GK Hooks.guestHooksR gw Γ0 s0 p0 fs d st) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨⟨hS, hX⟩, hD⟩ := hR
  refine ⟨fun v hv => ?_, fun hnr => ?_⟩
  swap
  · obtain ⟨hm, hgl⟩ := hX hg hna hnr
    exact (kOK_gk hF.hooks).congr d u0 st hu hm hgl hD.1 hD.2
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ0, hact0⟩ := hu
  obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
  subst hob
  have hG1 := hrun.2.2.2.2.2.1
  have hGe : G guestC Hooks.guestHooksR Γ1 (callEntryStateHOLFinite u0 callee) :=
    (G_locFree hF.hooks u0 _ _).mpr hG1
  have hcont : ∀ p, ptrsOf (callEntryStateHOLFinite u0 callee) = some p →
      (fld u0.memory o.base 24).toNat + (fld u0.memory o.base 40).toNat = p.fp :=
    fun p hp => hch.topMem o.base c rest hfs p ((ptrsOf_congr rfl).symm.trans hp)
  have hgas := gas_le_phi (hfs ▸ hch)
  have hgM : fld u0.memory o.base 64 ≠ Struct.wMax := by
    intro h
    have := congrArg BitVec.toNat h
    rw [Struct.wMax_toNat] at this
    omega
  obtain ⟨Γ2, p2, hrun2, hch2, hE2, hΦ2, hJ2, hact2, hQ, hkE, -⟩ := kc_coreM hF hfs
    (sg := Struct.sgCWM) (ks := [4, 5, 8, 23])
    (Pre := fun vs s Γ => Struct.CWMPre Shards.sty vs s Γ ∧ ReqOK [Shards.capEv [4, 5, 8, 23]] s Γ)
    (PW := Struct.PWev Shards.sty [4, 5, 8, 23]) (Q := Struct.CWMQ Shards.sty)
    (vs := [.val (.word base), wv [a0, a1, a2, a3], wv [b0, b1, b2, b3]])
    (fun g h => by simp [Struct.sgCWM] at h)
    (by simp [Struct.sgCWM]) (by simp [Struct.sgCWM, jrOut_iff]) (by decide) (by decide)
    (by decide) hrun hch hE hJ (fun hg' _ => hS hg') hg hna
    (argsOK_any (by simp [Struct.sgCWM]) rfl)
    ⟨fun e' he' => by
        have hb := evObj_base hevo he'
        refine ⟨?_, fun p hp => ?_⟩
        · show rd u0.memory (e'.cell 8) ≠ _
          rw [Struct.cells_base hb]; exact hgM
        · show (rd u0.memory (e'.cell 3)).toNat + (rd u0.memory (e'.cell 5)).toNat = _
          rw [Struct.cells_base hb, Struct.cells_base hb]; exact hcont p hp,
      fun c' hc' _ => by
        simp only [List.mem_cons, List.not_mem_nil, or_false] at hc'
        subst hc'
        exact ⟨o, hevo.1, hevo.2.1, hevo.2.2⟩⟩
    (fun a _ hw => by
      have := capPW_cs (vs := [.val (.word base), wv [a0, a1, a2, a3], wv [b0, b1, b2, b3]]) hF hGe
        (capEv_ok [4, 5, 8, 23]) (by decide) (Shards.pwev_cap hw)
      rwa [evKs_capEv] at this)
    (fun Γ2 hq p' hp' => by
      obtain ⟨-, -, h3⟩ := hq o (evObj_entry hevo) base a0 a1 a2 a3 b0 b1 b2 b3 rfl
      exact (h3 ⟨v, hv⟩).2.1 p' hp')
    (Or.inl (by decide))
  obtain ⟨hmem, -, h3⟩ := hQ o (evObj_entry hevo) base a0 a1 a2 a3 b0 b1 b2 b3 rfl
  obtain ⟨hlen, -, hgas2⟩ := h3 ⟨v, hv⟩
  have k24 := hkE 24 (by simp [evProtSlots]) (by decide)
  simp only [show (8 * 24 : Nat) = 192 from rfl] at k24
  have hgas2' : (fld st.memory o.base 64).toNat + base.toNat ≤ (fld u0.memory o.base 64).toNat :=
    hgas2
  rw [k24] at hΦ2
  refine ⟨⟨⟨hJ2, Γ2, p2, hrun2, hch2, hE2⟩, by omega, ?_⟩, hlen, hmem⟩
  rw [hact2]; rcases hact0 with h | h
  · exact Or.inl h
  · exact Or.inr (by omega)

end steps

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.noExc_extend_memory
#print axioms InitECandidate.Solver.MemSafe.Frames.em_sumSpec
#print axioms InitECandidate.Solver.MemSafe.Frames.cwm_sumSpec
#print axioms InitECandidate.Solver.MemSafe.Frames.cwm_exc
#print axioms InitECandidate.Solver.MemSafe.Frames.gk_em
#print axioms InitECandidate.Solver.MemSafe.Frames.gk_cwm
