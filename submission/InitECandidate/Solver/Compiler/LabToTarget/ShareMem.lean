import InitECandidate.Solver.Compiler.LabToTarget.Common
import Flapjack.Compiler.Backend.LabToTarget.CompileCorrect.ShareMem

/-!
# Bounded `Asm (ShareMem m r a)` case

Flapjack's `compileCorrect_shareMem`
(`Flapjack/Compiler/Backend/LabToTarget/CompileCorrect/ShareMem.lean`) restated for
`CompileCorrectForB`. The simulation (`hcore`) is Flapjack's proof verbatim; only the final
clock bookkeeping changes: the target's mapped-memory FFI entry at the instruction's own PC
costs one evaluator step, matching the one source clock tick (returning call), or is the
final transition (FFI `final` outcome, residual clock `e ≠ 0`).
-/

namespace InitECandidate.Solver.Compiler.LabToTarget

open Flapjack Flapjack.Compiler.Encoders Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Encoders.AsmSem Flapjack.Compiler.Encoders.AsmProps
open Flapjack.Compiler.Backend.LabSem Flapjack.Compiler.Backend.Semantics.TargetProps
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.LabLang Flapjack.Compiler.Backend.LabToTarget
open InitECandidate.Solver.EncoderBound

set_option autoImplicit false

/-- Bounded `compileCorrect_shareMem`. -/
theorem compileCorrectB_shareMem {width : Nat} [NeZero width] {S Q F : Type}
    {bound : HolAsm width → Nat} {q L : Nat}
    (s1 : LabSem.State width Config F) (m : HolMemop) (r : Nat)
    (ad : HolAddr width) (bytes : List (BitVec 8)) (n : Nat)
    (hclock : s1.clock ≠ 0) (hfetch : asmFetch s1 = some (.asm (.shareMem m r ad) bytes n))
    (ih : ∀ ffi' bs s', shareMemOp m r ad s1 = some (.ret ffi' bs, s') →
      CompileCorrectForB bound q L S Q { s' with
        ioRegs := holShiftSeq 1 s'.ioRegs
        ioFpRegs := holShiftSeq 1 s'.ioFpRegs }) :
    CompileCorrectForB bound q L S Q s1 := by
  rintro res mc s2 code2 labs t1 ms1 p ⟨ht, hev, hres, hec, hrel, hcost⟩
  obtain ⟨c1, c2, c3, -, -, -, -, -, -, -, -, -, -, -, c15, -, -, -, -, -, -, -, -, -, -, -, -,
    -, -, c30, -, -, c33, -, -, -, -, -, -, -, c41, -, -, -, -, -, c47, -, c49, c50, c51, c52,
    -⟩ := id hrel
  obtain ⟨base, off⟩ := ad
  obtain ⟨bytes', hf2, henc, hbm, -, hpos, hok⟩ :=
    imp_bytesInMemory_shareMem mc labs _ s1 code2 p t1 m r (.addr base off) bytes n
      ⟨hfetch, c49, c47, c33⟩
  obtain ⟨i, hi, -⟩ := c15
  obtain ⟨index, hle, hfi, hinfo⟩ := c51.1 s1.pc m r (.addr base off) bytes' bytes'.length i
    ⟨hf2, hi⟩
  have hpc : mc.target.getPc ms1 = p + BitVec.ofNat width (posVal s1.pc 0 code2) :=
    c1.2.1.trans c41
  rw [← hpc] at hfi
  have hlt : index < mc.ffiNames.length := by
    have := (Misc.findIndexLessLength _ _ _ _ hfi).2
    rw [c52]; omega
  have hn : ¬ (mc.progAddresses (mc.target.getPc ms1) ∧
      mc.target.getPc ms1 ∉ mc.ffiEntryPcs) :=
    fun h => h.2 (Misc.findIndex_isMem _ _ _ _ hfi)
  obtain ⟨hcc, hhalt⟩ := ffiEntryPcs_not_ccache_or_halt _ mc index
    ⟨hfi, (c50.2 index i ⟨hi, hlt, hle⟩).1, (c50.2 index i ⟨hi, hlt, hle⟩).2⟩
  have hentry : holEl index mc.ffiEntryPcs = t1.pc := by
    have := (findIndex_holEl _ _ 0 index hfi).2
    rw [Nat.sub_zero] at this
    rw [this, c1.2.1]
  have hts0 : targetStateRel mc.target { t1 with pc := holEl index mc.ffiEntryPcs } ms1 := by
    rw [hentry]; exact c1
  -- registers read by the target instruction
  simp only [asmOkExact, asmInstOkExact, asmRegOkExact, Bool.and_eq_true, decide_eq_true_eq,
    Bool.not_eq_true'] at hok
  have hgr : ∀ x, x < mc.target.config.regCount →
      mc.target.config.avoidRegs.contains x = false → mc.target.getReg ms1 x = t1.regs x :=
    fun x h1 h2 => c1.2.2.2.1 x ⟨h1, h2⟩
  have htreg : ∀ x w, s1.regs x = .word w → t1.regs x = w := by
    intro x w hx
    have := c30 x; rw [hx] at this; simpa [wordLocVal] using this.symm
  -- the encoded instruction is in target memory at the entry PC
  have henc' : bytesInMemoryHOL (mc.target.getPc ms1)
      (mc.target.config.encode (.inst (.mem m r (.addr base off)))) (mc.target.getByte ms1)
      mc.progAddresses := by
    obtain ⟨cnt, hcnt⟩ := (encWithNop_iff _ _ _).mp henc
    rw [hcnt, bytesInMemory_append] at hbm
    rw [hpc, c3]
    refine bytesInMemory_changeMem _ _ t1.mem _ _ ⟨hbm.1, fun k hk => ?_⟩
    exact (c1.2.2.1 _ (bytesInMemoryInDomain _ _ _ _ k ⟨hbm.1, hk⟩)).symm
  have hshared : ∀ v, s1.sharedMemDomain (holByteAlign v) = true →
      mc.sharedAddresses v := by
    intro v hv
    rw [c51.2.2.2]; exact c51.2.2.1 v hv
  have hshared0 : ∀ v, s1.sharedMemDomain v = true → mc.sharedAddresses v := by
    intro v hv; rw [c51.2.2.2]; exact hv
  have hwidth : 4 ≤ width / 8 := by rcases c2 with h | h <;> simp [h]
  rw [evaluate] at hev
  simp only [hclock, ↓reduceIte, hfetch] at hev
  obtain ⟨x, next, hso⟩ : ∃ x next, shareMemOp m r (.addr base off) s1 = some (x, next) := by
    split at hev
    · exact absurd (Prod.mk.inj hev).1.symm hres
    · exact ⟨_, _, ‹_›⟩
    · exact ⟨_, _, ‹_›⟩
  -- the target FFI entry simulates the source operation
  have hcore :
      (∀ c, evaluateTargetHOL mc s1.ffi (c + 1) ms1 =
        match x with
        | .final e => (.halt (.ffiOutcome e), ms1, s1.ffi)
        | .ret f bs => evaluateTargetHOL { mc with ffiInterfer := holShiftSeq 1 mc.ffiInterfer }
            f c (mc.ffiInterfer 0 (index, bs, ms1))) ∧
      (∀ e, x = .final e → next = s1) ∧
      (∀ f bs, x = .ret f bs →
        nextInterference mc s1.ffi ms1 = some
          (.ffiApp index bs ms1 (mc.ffiInterfer 0 (index, bs, ms1)),
            { mc with ffiInterfer := holShiftSeq 1 mc.ffiInterfer }, f) ∧
        callFFIRelHOL s1.ffi f ∧
        ∃ tregs regs, targetStateRel mc.target
            { t1 with regs := tregs, pc := p + BitVec.ofNat width (posVal (s1.pc + 1) 0 code2) }
            (mc.ffiInterfer 0 (index, bs, ms1)) ∧
          (∀ y, wordLocVal p labs (regs y) = some (tregs y)) ∧
          next = { s1 with ffi := f, regs := regs, pc := s1.pc + 1, clock := s1.clock - 1 }) := by
    have hgb : ∀ wb, s1.regs base = .word wb → mc.target.getReg ms1 base = wb :=
      fun wb hb => (hgr base hok.1.2.1 hok.1.2.2).trans (htreg base wb hb)
    rcases shareMemOp_load_or_store (width := width) m with
      ⟨size, hsz, hgi, hop, hvalid⟩ | ⟨size, hsz, hgi, hop, hvalid⟩
    all_goals
      rw [hgi] at hinfo
      obtain ⟨he, hlk⟩ := hinfo
      have hm := (sptAListLookup_eq_lookup index mc.mmioInfo).trans hlk
      have hsize0 : BitVec.ofNat 8 size = 0 ↔ size = 0 := by
        rcases hsz with rfl | rfl | rfl | rfl <;> decide
      have hv := (hvalid (mc.target.getPc ms1) r (.addr base off)
        (p + BitVec.ofNat width (posVal s1.pc 0 code2 + bytes'.length)) mc.target ms1
        mc.progAddresses).2 henc'
      rw [hop] at hso
    · -- loads
      simp only [shareMemLoad, addrValue] at hso
      cases hb : s1.regs base with
      | loc _ _ => simp [hb] at hso
      | word wb =>
      simp only [hb] at hso
      by_cases hcond : (if size = 0 then
          ((wb + off).toNat % (width / 8) == 0 && s1.sharedMemDomain (wb + off))
        else s1.sharedMemDomain (riscvByteAlignHOL (wb + off))) = true
      swap
      · rw [if_neg hcond] at hso; cases hso
      rw [if_pos hcond] at hso
      have hal : BitVec.ofNat 8 size = 0 →
          (mc.target.getReg ms1 base + off).toNat % (width / 8) = 0 := by
        intro h0
        rw [hsize0] at h0
        rw [if_pos h0] at hcond
        simp only [Bool.and_eq_true, beq_iff_eq] at hcond
        rw [hgb wb hb]; exact hcond.1
      have hsh : mc.sharedAddresses (mc.target.getReg ms1 base + off) := by
        rw [hgb wb hb]
        by_cases h0 : size = 0
        · rw [if_pos h0] at hcond
          simp only [Bool.and_eq_true] at hcond
          exact hshared0 _ hcond.2
        · rw [if_neg h0, riscvByteAlignHOL_eq c2] at hcond
          exact hshared _ hcond
      have hstep := fun c => evaluateTarget_mappedRead mc s1.ffi c ms1 index _ base r off _
        hn hhalt hcc hfi he hm hal hsh hv
      have hcallT : HolByte.wordToBytes (mc.target.getReg ms1 base + off) false =
          sharedMemoryWordBytes (wb + off) := by
        rw [hgb wb hb, sharedMemoryWordBytes_eq]
      rw [hcallT] at hstep
      cases hcall : callFFIHOL s1.ffi (.sharedMem .mappedRead) [BitVec.ofNat 8 size]
          (sharedMemoryWordBytes (wb + off)) with
      | final e =>
        rw [hcall] at hso hstep
        simp only [Option.some.injEq, Prod.mk.injEq] at hso
        obtain ⟨rfl, rfl⟩ := hso
        exact ⟨hstep, fun _ _ => rfl, fun _ _ h => by cases h⟩
      | ret f bs =>
        rw [hcall] at hso hstep
        simp only [Option.some.injEq, Prod.mk.injEq] at hso
        obtain ⟨rfl, rfl⟩ := hso
        refine ⟨hstep, (fun _ h => by cases h), fun f' bs' h => ?_⟩
        cases h
        obtain ⟨op, hop', hmatch⟩ := c50.1 ms1 0 index bs t1 (BitVec.ofNat 8 size) base off r _
          (mc.target.getReg ms1 base + off) s1.ffi f i
          ⟨hi, hle, hlt, .refl, hlk, c3, rfl, hts0⟩
        rw [he] at hop'
        cases hop'
        have htrel := hmatch ⟨by split; exact hal ‹_›; trivial, hsh, hv, by
          rw [hcallT]; exact hcall⟩
        refine ⟨nextInterferenceSharedMem mc s1.ffi ms1 index base r _ off _ .mappedRead bs f
            ⟨hn, hhalt, hcc, hfi, he, hm, hal, hsh, fun _ => ⟨hv, by rw [he, hcallT]; exact hcall⟩,
              fun h => by cases h⟩,
          ⟨_, _, _, _, hcall⟩, fun n => if n = r then HolByte.wordOfBytes false 0 bs else t1.regs n,
          _, ?_, ?_, rfl⟩
        · rw [hpos]; exact htrel
        · intro y
          by_cases hy : y = r
          · simp [hy, wordLocVal, wordOfBytesHOL8_eq]
          · simpa [hy] using c30 y
    · -- stores
      simp only [shareMemStore, addrValue] at hso
      cases hw : s1.regs r with
      | loc _ _ => simp [hw] at hso
      | word w =>
      cases hb : s1.regs base with
      | loc _ _ => simp [hw, hb] at hso
      | word wb =>
      simp only [hw, hb] at hso
      by_cases hcond : (if size = 0 then
          ((wb + off).toNat % (width / 8) == 0 && s1.sharedMemDomain (wb + off))
        else s1.sharedMemDomain (riscvByteAlignHOL (wb + off))) = true
      swap
      · rw [if_neg hcond] at hso; cases hso
      rw [if_pos hcond] at hso
      have hal : BitVec.ofNat 8 size = 0 →
          (mc.target.getReg ms1 base + off).toNat % (width / 8) = 0 := by
        intro h0
        rw [hsize0] at h0
        rw [if_pos h0] at hcond
        simp only [Bool.and_eq_true, beq_iff_eq] at hcond
        rw [hgb wb hb]; exact hcond.1
      have hsh : mc.sharedAddresses (mc.target.getReg ms1 base + off) := by
        rw [hgb wb hb]
        by_cases h0 : size = 0
        · rw [if_pos h0] at hcond
          simp only [Bool.and_eq_true] at hcond
          exact hshared0 _ hcond.2
        · rw [if_neg h0, riscvByteAlignHOL_eq c2] at hcond
          exact hshared _ hcond
      have hstep := fun c => evaluateTarget_mappedWrite mc s1.ffi c ms1 index _ base r off _
        hn hhalt hcc hfi he hm hal hsh hv
      have hgw : mc.target.getReg ms1 r = w :=
        (hgr r hok.1.1.1 hok.1.1.2).trans (htreg r w hw)
      have hcallT : ((if BitVec.ofNat 8 size = 0 then
            HolByte.wordToBytes (mc.target.getReg ms1 r) false
          else HolByte.wordToBytesAux (BitVec.ofNat 8 size).toNat (mc.target.getReg ms1 r) false) ++
          HolByte.wordToBytes (mc.target.getReg ms1 base + off) false) =
          ((if size = 0 then sharedMemoryWordBytes w
            else (sharedMemoryWordBytes w).take size) ++ sharedMemoryWordBytes (wb + off)) := by
        rw [hgb wb hb, hgw, sharedMemoryWordBytes_eq, sharedMemoryWordBytes_eq]
        rcases hsz with rfl | rfl | rfl | rfl
        · rfl
        all_goals
          simp only [BitVec.ofNat_eq_ofNat, show ¬ ((1 : Nat) = 0) from by decide,
            show ¬ ((2 : Nat) = 0) from by decide, show ¬ ((4 : Nat) = 0) from by decide,
            ↓reduceIte]
          rw [take_wordToBytes _ _ (by omega)]
          rfl
      rw [hcallT] at hstep
      cases hcall : callFFIHOL s1.ffi (.sharedMem .mappedWrite) [BitVec.ofNat 8 size]
          ((if size = 0 then sharedMemoryWordBytes w
            else (sharedMemoryWordBytes w).take size) ++ sharedMemoryWordBytes (wb + off)) with
      | final e =>
        rw [hcall] at hso hstep
        simp only [Option.some.injEq, Prod.mk.injEq] at hso
        obtain ⟨rfl, rfl⟩ := hso
        exact ⟨hstep, fun _ _ => rfl, fun _ _ h => by cases h⟩
      | ret f bs =>
        rw [hcall] at hso hstep
        simp only [Option.some.injEq, Prod.mk.injEq] at hso
        obtain ⟨rfl, rfl⟩ := hso
        refine ⟨hstep, (fun _ h => by cases h), fun f' bs' h => ?_⟩
        cases h
        obtain ⟨op, hop', hmatch⟩ := c50.1 ms1 0 index bs t1 (BitVec.ofNat 8 size) base off r _
          (mc.target.getReg ms1 base + off) s1.ffi f i
          ⟨hi, hle, hlt, .refl, hlk, c3, rfl, hts0⟩
        rw [he] at hop'
        cases hop'
        have htrel := hmatch ⟨by split; exact hal ‹_›; trivial, hsh, hv, by
          rw [hcallT]; exact hcall⟩
        refine ⟨nextInterferenceSharedMem mc s1.ffi ms1 index base r _ off _ .mappedWrite bs f
            ⟨hn, hhalt, hcc, hfi, he, hm, hal, hsh, (fun h => by cases h),
              fun _ => ⟨hv, by rw [he, hcallT]; exact hcall⟩⟩,
          ⟨_, _, _, _, hcall⟩, t1.regs, s1.regs, ?_, c30, rfl⟩
        rw [hpos]; exact htrel
  obtain ⟨hstep, hfinal, hret⟩ := hcore
  split at hev
  · exact absurd (Prod.mk.inj hev).1.symm hres
  · -- final outcome
    rename_i outcome next' hshare
    rw [hso] at hshare
    simp only [Option.some.injEq, Prod.mk.injEq] at hshare
    obtain ⟨rfl, rfl⟩ := hshare
    obtain ⟨rfl, rfl⟩ := Prod.mk.inj hev
    refine ⟨0, ms1, ?_, fun e he => ?_⟩
    · rw [hfinal _ rfl]; exact clockBound_final (Nat.zero_le _)
    have he0 : e ≠ 0 := fun h0 => by have := he.mpr h0; cases this
    obtain ⟨e', rfl⟩ : ∃ e', e = e' + 1 := ⟨e - 1, by omega⟩
    rw [Nat.zero_add, hstep]
    dsimp only
    rw [hfinal _ rfl]
  · -- returning call
    rename_i f bs next' hshare
    have hshare' := hshare
    rw [hso] at hshare'
    simp only [Option.some.injEq, Prod.mk.injEq] at hshare'
    obtain ⟨rfl, rfl⟩ := hshare'
    obtain ⟨hnext, hffi, tregs, regs, htrel, hregs, hnexteq⟩ := hret f bs rfl
    subst hnexteq
    have hrel' := stateRel_shareMem hrel f hffi regs (holShiftSeq 1 s1.ioRegs)
      (holShiftSeq 1 s1.ioFpRegs) tregs _ htrel hregs rfl
    obtain ⟨k, ms2, hb, hk⟩ := ih f bs _ hshare res _ s2 code2 labs _ _ p
      ⟨oracleTie_ffiNext mc ms1 s1 _ index bs ms1 _ _ f ⟨ht, hnext, rfl, rfl, rfl, rfl, rfl⟩,
        hev, hres, hec, hrel', hcost⟩
    refine ⟨k + 1, ms2, clockBound_step rfl hclock hb (Nat.succ_le_succ (Nat.zero_le _)),
      fun e he => ?_⟩
    rw [show k + 1 + e = (k + e) + 1 by omega, hstep]
    exact hk e he

end InitECandidate.Solver.Compiler.LabToTarget
