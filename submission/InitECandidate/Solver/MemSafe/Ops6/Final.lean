import InitECandidate.Solver.MemSafe.Ops6.Loop
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# The record-building tail of `op_log` (sonnet-log)

```
var log = alloc(40); var log_address = alloc(24);
memcpy(log_address, ..., 20); st log+0, log_address; st log+8, topics; st log+16, ntopics;
var data = alloc(n + 8); var s = sat_word(start); memcpy(data, MEM + s, n);
st log+24, data; st log+32, n; log_append(ev, log); pc_add(1); return 0;
```
as one heap window (`heap_mark` fabricated at the current heap pointer; never released).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

abbrev lgOff (x : String) (k : Nat) : ExpHOL 64 := .op .add [lv (nm x), cw k]
abbrev lgFin : ProgHOL 64 :=
  .seq (callD (nm "log_append") [gv (nm "ev"), lv (nm "log")]) mstoreTail
abbrev lgW2 : ProgHOL 64 :=
  .decCall (nm "data") .one (nm "alloc") [.op .add [lv (nm "n"), cw 8]]
  (.decCall (nm "s") .one (nm "sat_word") [lv (nm "start")]
  (.seq (callD (nm "memcpy") [lv (nm "data"), .op .add [gLoad "ev" 24, lv (nm "s")], lv (nm "n")])
  (.seq (.store (lgOff "log" 24) (lv (nm "data")))
  (.seq (.store (lgOff "log" 32) (lv (nm "n"))) lgFin))))
abbrev lgW1 : ProgHOL 64 :=
  .seq (callD (nm "memcpy") [lv (nm "log_address"),
      .load .one (.op .add [.load .one (.op .add [gv (nm "ev"), cw 112]), cw 32]), cw 20])
  (.seq (.store (lgOff "log" 0) (lv (nm "log_address")))
  (.seq (.store (lgOff "log" 8) (lv (nm "topics")))
  (.seq (.store (lgOff "log" 16) (lv (nm "ntopics"))) lgW2)))
abbrev lgTailF : ProgHOL 64 :=
  .decCall (nm "log") .one (nm "alloc") [cw 40]
  (.decCall (nm "log_address") .one (nm "alloc") [cw 24] lgW1)

theorem lg_lk {x y : MlS} (hxy : y ≠ x) {v : ValueHOL 64} {st u : State σ} :
    (setVarHOLFinite y v { st with locals := u.locals }).locals.lookup x = u.locals.lookup x :=
  lk_set_ne _ _ hxy

theorem lg_off_nat {q : BitVec 64} {k : Nat} (h : q.toNat + k < 2 ^ 64) :
    (q + BitVec.ofNat 64 k).toNat = q.toNat + k := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := k) (by omega),
    Nat.mod_eq_of_lt h]

section final
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs
local notation "WJ" => WinI (Hooks.guestHooksR (σ := σ)) Γ0 s0 p0 fs

theorem win_start {d : Nat} {u : State σ} (hu : KJ d u) :
    ∃ (m : BitVec 64) (Γ1 : Gam) (pm : Ptrs), WJ d u m Γ1 pm u := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ, hact⟩ := id hu
  obtain ⟨a, b, c', ha, hb, hc, hp1⟩ := AllocImpl.ptrsOf_some hrun.2.1
  obtain ⟨Γ2, pm, hW⟩ := winI_mark hF.hooks hu ha (st := u) rfl rfl rfl rfl
  exact ⟨a, Γ2, pm, hW⟩

syntax "lkf" : tactic
macro_rules
  | `(tactic| lkf) => `(tactic| (repeat (first | rw [lg_lk (by decide)] | rw [lk_set_self])); try assumption)

syntax "lkfh " ident : tactic
macro_rules
  | `(tactic| lkfh $h) => `(tactic| (repeat (first | rw [lg_lk (by decide)] at $h:ident | rw [lk_set_self] at $h:ident)))

theorem lg_st_args {Γ : Gam} {p : Ptrs} {q1 : BitVec 64} {k : Nat} (hq1 : q1.toNat % 8 = 0)
    (hbnd : q1.toNat + 40 ≤ heapEnd) (hk : k ≤ 32) (hk8 : k % 8 = 0)
    (hT : TmpBuf Γ p q1.toNat 40) :
    (q1 + BitVec.ofNat 64 k).toNat % 8 = 0 ∧ TmpBuf Γ p (q1 + BitVec.ofNat 64 k).toNat 8 := by
  have hhe : heapEnd < 2 ^ 64 := by decide
  have := lg_off_nat (q := q1) (k := k) (by omega)
  rw [this]
  exact ⟨by omega, tmpBuf_in (by omega) (by omega) hT⟩

theorem lg_final (hfs : fs = (e, c) :: rest) {d : Nat} {u : State σ} (hu : KJ d u)
    {nt q nn A0 A1 A2 A3 : BitVec 64}
    (hnt : u.locals.lookup (nm "ntopics") = some (.val (.word nt)))
    (hq : u.locals.lookup (nm "topics") = some (.val (.word q)))
    (hn : u.locals.lookup (nm "n") = some (.val (.word nn))) (hnn : nn.toNat < 2 ^ 61)
    (hst : u.locals.lookup (nm "start") = some (wv [A0, A1, A2, A3])) (hd : 1 ≤ d)
    (hnt1024 : nt.toNat ≤ 1024) :
    HoareG σ guestCtx (fun t => t = u) lgTailF (GQ (KJ) true) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have h40 : (BitVec.ofNat 64 40).toNat = 40 := by decide
  have h24 : (BitVec.ofNat 64 24).toNat = 24 := by decide
  have h20 : (BitVec.ofNat 64 20).toNat = 20 := by decide
  have hhe : heapEnd < 2 ^ 64 := by decide
  obtain ⟨m, Γ1, pm, hW⟩ := win_start hu
  have hpmq := winI_mark_le hW
  refine hoareG_winAllocF hfs hW (ev_cw _ 40) fun st1 q1 pc1 hm1 hmo1 hW1 hq1 hbnd1 hT1 hfr1 => ?_
  rw [h40] at hbnd1 hT1 hfr1
  -- the record block is above the mark
  have hq1m : m.toNat ≤ q1.toNat := by
    have h0 := hfr1 q1.toNat le_rfl (by omega)
    have h1 := hT1.1.1
    by_contra hlt
    exact h0 (Or.inl ⟨h1, by omega⟩)
  have hnm : ∀ {k j : Nat}, k < 40 → j < 40 → k ≠ j →
      q1 + BitVec.ofNat 64 k ≠ q1 + BitVec.ofNat 64 j := by
    intro k j hk hj hkj he
    have h := congrArg BitVec.toNat he
    rw [lg_off_nat (by omega), lg_off_nat (by omega)] at h
    omega
  refine hoareG_winAllocT hfs hW1 (ev_cw _ 24) fun st2 q2 pc2 hm2 hmo2 hW2 hq2 hbnd2 hT2 => ?_
  rw [h24] at hbnd2 hT2
  have hT1' : TmpBuf Γ1 pc2 q1.toNat 40 := tmpBuf_ptr hmo2 hT1
  refine hoareG_winCallT hfs rfl rfl mcp_memcpy_mem mcpy_fp hW2
    (fun vs hvs => argsOK_mcpy3 (N := BitVec.ofNat 64 20) ?_ (ev_cw _ 20) hvs)
    fun t3 hl3 ⟨Γ3, p3, hW3, htr⟩ => ?_
  · intro v hv
    rw [ev_lv] at hv
    lkfh hv
    rw [Option.some.injEq] at hv
    subst hv
    exact ⟨q2, rfl, tmpBuf_bufOK (tmpBuf_in le_rfl (by omega) hT2)⟩
  have hT3 : TmpBuf Γ3 p3 q1.toNat 40 := htr _ _ hT1'
  -- st log + 0, log_address
  obtain ⟨h8a, hAa⟩ := lg_st_args (k := 0) hq1 hbnd1 (by omega) (by omega) hT3
  refine hoareG_winSt hW3 (ea := lgOff "log" 0) (ee := lv (nm "log_address"))
    (ev_add2 (by rw [ev_lv, hl3]; lkf) (ev_cw _ 0)) (by rw [ev_lv, hl3]; lkf) h8a hAa
    fun t4 hl4 hW4 => ?_
  -- st log + 8, topics
  obtain ⟨h8b, hAb⟩ := lg_st_args (k := 8) hq1 hbnd1 (by omega) (by omega) hT3
  refine hoareG_winSt hW4 (ea := lgOff "log" 8) (ee := lv (nm "topics"))
    (ev_add2 (by rw [ev_lv, hl4, hl3]; lkf) (ev_cw _ 8)) (by rw [ev_lv, hl4, hl3]; lkf) h8b hAb
    fun t5 hl5 hW5 => ?_
  -- st log + 16, ntopics
  obtain ⟨h8c, hAc⟩ := lg_st_args (k := 16) hq1 hbnd1 (by omega) (by omega) hT3
  refine hoareG_winStM hW5 (ea := lgOff "log" 16) (ee := lv (nm "ntopics"))
    (ev_add2 (by rw [ev_lv, hl5, hl4, hl3]; lkf) (ev_cw _ 16)) (by rw [ev_lv, hl5, hl4, hl3]; lkf)
    h8c hAc fun t6 hl6 hW6 hrd6 _ => ?_
  have hL6 := hl6.trans (hl5.trans (hl4.trans hl3))
  -- var data = alloc(n + 8)
  refine hoareG_winAllocF hfs hW6 (x := .op .add [lv (nm "n"), cw 8])
    (ev_add2 (by rw [ev_lv, hl6, hl5, hl4, hl3]; lkf) (ev_cw _ 8))
    fun st7 q7 pc7 hm7 hmo7 hW7 hq7 hbnd7 hT7 hfr7 => ?_
  have h8n : (nn + BitVec.ofNat 64 8).toNat = nn.toNat + 8 := lg_off_nat (by omega)
  rw [h8n] at hbnd7 hT7 hfr7
  -- the `+16` cell is allocated, outside `Γ` and outside the data block
  have hc16 : Overlap q1.toNat 40 (q1 + BitVec.ofNat 64 16) := by
    have := lg_off_nat (q := q1) (k := 16) (by omega)
    refine ⟨?_, ?_, ?_⟩ <;> rw [this] <;> omega
  have hna16 : ¬ Overlap q7.toNat nn.toNat (q1 + BitVec.ofNat 64 16) := by
    rintro ⟨hy8, hy1, hy2⟩
    have hy1' : q7.toNat < (q1 + BitVec.ofNat 64 16).toNat + 8 := hy1
    have hy2' : (q1 + BitVec.ofNat 64 16).toNat < q7.toNat + nn.toNat := hy2
    exact hfr7 _ (by omega) (by omega) (hT3.2 _ hc16).2
  have hT3' : TmpBuf Γ3 pc7 q1.toNat 40 := tmpBuf_ptr hmo7 hT3
  -- var s = sat_word(start)
  refine hoareG_kPure (Struct.pure_sat_word guestCtx_code)
    fun u8 hu8 vs hvs callee sv st8 hm hg hd' hbe hRv hsh => ?_
  have hW8 := winI_congr hF.hooks (hu8 ▸ hW7) hm hg hd' hbe
  have hW8' := winI_congr hF.hooks hW8
    (t := setVarHOLFinite (nm "s") sv { st8 with locals := u8.locals }) rfl rfl rfl rfl
  -- memcpy(data, MEM + s, n)
  refine hoareG_winCallK hfs rfl rfl mcp_memcpy_mem mcpy_fp hW8'
    (fun vs hvs => argsOK_mcpy3 (N := nn) ?_ (by rw [ev_lv, hu8]; lkf; try (rw [hL6]; lkf)) hvs)
    fun t9 hl9 ⟨Γ9, p9, hW9, htr9⟩ hk9 => ?_
  · intro v hv
    rw [ev_lv, hu8] at hv
    lkfh hv
    rw [Option.some.injEq] at hv
    subst hv
    exact ⟨q7, rfl, tmpBuf_bufOK (tmpBuf_in le_rfl (by omega) hT7)⟩
  have hT3'' : TmpBuf Γ9 p9 q1.toNat 40 := htr9 _ _ hT3'
  -- `+16` survives `memcpy(data, ..)`
  have hrd9 : rd t9.memory (q1 + BitVec.ofNat 64 16) = nt := by
    have hk := hk9 (q1 + BitVec.ofNat 64 16) (hT3'.2 _ hc16).1 (hT3'.2 _ hc16).2 (fun vs hvs ha => by
      obtain ⟨v0, v1, v2, rfl, h0, h1, h2⟩ := Pre.evs3 hvs
      have e0 : v0 = .val (.word q7) := by
        rw [ev_lv, hu8] at h0
        lkfh h0
        exact (Option.some.inj h0).symm
      have e2 : v2 = .val (.word nn) := by
        rw [ev_lv, hu8] at h2
        lkfh h2
        first
          | exact (Option.some.inj h2).symm
          | (rw [hL6] at h2; lkfh h2; rw [hn] at h2; exact (Option.some.inj h2).symm)
      subst e0 e2
      have hov := Pre.argCells_mc ha
      rw [Nat.one_mul, Nat.add_zero] at hov
      exact hna16 hov)
    have hm8 : (setVarHOLFinite (nm "s") sv { st8 with locals := u8.locals }).memory = t6.memory := by
      show st8.memory = t6.memory
      rw [hm, hu8]
      exact hm7
    unfold rd at hrd6 ⊢
    rw [hk, hm8]
    exact hrd6
  -- st log + 24, data
  obtain ⟨h8d, hAd⟩ := lg_st_args (k := 24) hq1 hbnd1 (by omega) (by omega) hT3''
  refine hoareG_winStM hW9 (ea := lgOff "log" 24) (ee := lv (nm "data"))
    (ev_add2 (by rw [ev_lv, hl9, hu8]; lkf; try (rw [hL6]; lkf)) (ev_cw _ 24)) (by rw [ev_lv, hl9, hu8]; lkf; try (rw [hL6]; lkf)) h8d hAd
    fun t10 hl10 hW10 _ hne10 => ?_
  -- st log + 32, n
  obtain ⟨h8e, hAe⟩ := lg_st_args (k := 32) hq1 hbnd1 (by omega) (by omega) hT3''
  refine hoareG_winStM hW10 (ea := lgOff "log" 32) (ee := lv (nm "n"))
    (ev_add2 (by rw [ev_lv, hl10, hl9, hu8]; lkf; try (rw [hL6]; lkf)) (ev_cw _ 32))
    (by rw [ev_lv, hl10, hl9, hu8]; lkf; try (rw [hL6]; lkf)) h8e hAe fun t11 hl11 hW11 hrd11 hne11 => ?_
  -- log_append(ev, log); pc_add(1); return 0
  obtain ⟨hG11, hp11⟩ := winI_G hW11
  obtain ⟨qq, hqq, hordc, hLc, -⟩ := id hG11
  obtain rfl : p9 = qq := Option.some.inj (hp11.symm.trans hqq)
  have hlogq : t11.locals.lookup (nm "log") = some (.val (.word q1)) := by
    rw [hl11, hl10, hl9, hu8]; lkf; try (rw [hL6]; lkf)
  -- the record joins the typing, with its field bounds
  obtain ⟨hGKA, hrec⟩ := gka_of_winR hF Hooks.guestHooksR_mono wfR_log hfs hW11 hq1 hT3'' hq1m
  have hrdF : LogF t11.memory q1 := by
    constructor
    · have h1 : rd t11.memory (q1 + BitVec.ofNat 64 16) = nt := by
        unfold rd at hrd9 ⊢
        rw [hne11 _ (hnm (by omega) (by omega) (by omega)), hne10 _ (hnm (by omega) (by omega) (by omega))]
        exact hrd9
      rw [h1]
      omega
    · rw [hrd11]
      have h1 := hT7.1.1
      have h2 : heapBase + 2 ^ 30 ≥ heapEnd := by decide
      omega
  refine hoareG_gkLogApp hfs hGKA hlogq ⟨hrec, hrdF⟩
    fun t' hl' hK' => ?_
  refine hoareG_pt fun t'' h'' => ?_
  subst h''
  exact gc_sound kOK_KJ (callSem_gE hfs) _ true true mstoreTail_gc _ (kOK_KJ.mono _ _ _ hK' hd)

end final

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.lg_final
