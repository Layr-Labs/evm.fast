import InitECandidate.Solver.Compiler.LabToTarget.Common
import Flapjack.Compiler.Backend.LabToTarget.CompileCorrect.CallFfi

/-!
# Bounded `LabAsm (CallFFI s)` case

Flapjack's `compileCorrect_callFFI`
(`Flapjack/Compiler/Backend/LabToTarget/CompileCorrect/CallFfi.lean`) restated for
`CompileCorrectForB`. The target jumps to the FFI entry (`l ≤ L / q` machine steps, by
`stepOfLine_bounded`) and the FFI-entry transition costs one more evaluator step, so a
returning call costs `l + 1 ≤ L / q + 1` target clock for one source clock tick; a `final`
outcome costs `l` plus the residual clock `e ≠ 0`. The rest of the proof is Flapjack's.
-/

namespace InitECandidate.Solver.Compiler.LabToTarget

open Flapjack Flapjack.Compiler.Encoders Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Encoders.AsmSem Flapjack.Compiler.Encoders.AsmProps
open Flapjack.Compiler.Backend.LabSem Flapjack.Compiler.Backend.Semantics.TargetProps
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.LabLang Flapjack.Compiler.Backend.LabToTarget
open Flapjack.Basis.Pure.MlString
open InitECandidate.Solver.EncoderBound

set_option autoImplicit false

/-- Bounded `compileCorrect_callFFI`. -/
theorem compileCorrectB_callFFI {width : Nat} [NeZero width] {S Q : Type} {F : Type}
    {bound : HolAsm width → Nat} {q L : Nat}
    (s1 : LabSem.State width Config F) (name : MlString)
    (w : BitVec width) (bytes : List (BitVec 8)) (n : Nat)
    (hclock : s1.clock ≠ 0) (hfetch : asmFetch s1 = some (.labAsm (.callFFI name) w bytes n))
    (ih : ∀ (len start len2 start2 : BitVec width) (n1 n2 : Nat) (conf bytes2 : List (BitVec 8))
        (newPc : Nat) (newFfi : HolFfiState F) (newBytes : List (BitVec 8)),
      s1.regs s1.lenReg = .word len → s1.regs s1.ptrReg = .word start →
      s1.regs s1.len2Reg = .word len2 → s1.regs s1.ptr2Reg = .word start2 →
      s1.regs s1.linkReg = .loc n1 n2 →
      readBytearrayWordHOL start len.toNat
        (memLoadByteAuxExact s1.memory s1.memDomain s1.be) = some conf →
      readBytearrayWordHOL start2 len2.toNat
        (memLoadByteAuxExact s1.memory s1.memDomain s1.be) = some bytes2 →
      locToPc n1 n2 s1.code = some newPc →
      callFFIHOL s1.ffi (.extCall name) conf bytes2 = .ret newFfi newBytes →
      CompileCorrectForB bound q L S Q { s1 with
        memory := writeBytearrayExact start2 newBytes s1.memory s1.memDomain s1.be
        ffi := newFfi
        ioRegs := holShiftSeq 1 s1.ioRegs
        ioFpRegs := holShiftSeq 1 s1.ioFpRegs
        regs := fun r => getRegValue (s1.ioRegs 0 (.extCall name) r) (s1.regs r) WordLocW.word
        fpRegs := fun r => s1.ioFpRegs 0 r
        pc := newPc
        clock := s1.clock - 1 }) :
    CompileCorrectForB bound q L S Q s1 := by
  rintro res mc s2 code2 labs t1 ms1 p ⟨ht, hev, hres, hec, hrel, hcost⟩
  rw [evaluate] at hev
  simp only [hclock, ↓reduceIte, hfetch] at hev
  split at hev
  rotate_left
  · exact absurd (Prod.mk.inj hev).1.symm hres
  rename_i len start len2 start2 n1 n2 hlen hptr hlen2 hptr2 hlink
  split at hev
  rotate_left
  · exact absurd (Prod.mk.inj hev).1.symm hres
  rename_i conf bytes2 newPc hrd1 hrd2 hloc
  obtain ⟨c1, c2, c3, -, -, c6, c7, c8, c9, c10, c11, c12, c13, -, c15, c16, -, -, -, -, -, c22,
    -, c24, -, -, -, c28, -, c30, c31, -, -, -, -, -, -, -, ht1f, c40, htpc, -, -, c44, -, -, -,
    -, -, c50, -, c52, -⟩ := id hrel
  -- the target line is a jump to the FFI entry of `name`
  obtain ⟨w', bytes', len', hok, hmem, hpos, hdis⟩ := fetchedLabAsmLine hrel hfetch
  simp only [lineOk] at hok
  obtain ⟨l, ms2, hlq, hl⟩ := stepOfLine_bounded bound q hcost.2.1 s1.ffi hrel hec _ bytes' hmem
    hok.1 hok.2.2 hdis
    (by simp [asmUpd, jumpToOffset, AsmSem.updPc, ht1f])
  have hts := (hl 0).2.2.1
  obtain ⟨-, hgpc, hgmem, hgreg, -⟩ := hts
  -- the FFI name is an external call below the MMIO boundary
  obtain ⟨i, hi, hiinfo⟩ := c15
  obtain ⟨y, hy⟩ := hasIoName_findIndex s1.code name (imp_hasIoName s1 name w bytes n hfetch)
  have hmemNames : HolFfiName.extCall name ∈ mc.ffiNames := by
    have hm1 := Misc.findIndex_isMem _ _ _ _ hy
    simp only [Misc.listSubset, List.all_eq_true, decide_eq_true_eq] at c22
    exact c22 _ (List.mem_filter.mpr ⟨hm1, rfl⟩)
  have : Nonempty HolFfiName := ⟨.extCall name⟩
  have hidx : getFfiIndex mc.ffiNames (.extCall name) < i :=
    ffiName_not_mapped _ i _ ⟨hi, ⟨name, rfl⟩, hmemNames⟩
  have hidxt : getFfiIndex (mc.ffiNames.take (holThe (mmioPcsMinIndex mc.ffiNames)))
      (.extCall name) = getFfiIndex mc.ffiNames (.extCall name) := by
    rw [hi]; exact getFfiIndex_take _ _ _ hmemNames hidx
  obtain ⟨-, hnp, hnh, hnc, hfi⟩ := c24 _ i ⟨hmemNames, hi, hidx⟩
  have he := el_getFfiIndex_mem _ _ hmemNames
  have hlk : mc.mmioInfo.lookup (getFfiIndex mc.ffiNames (.extCall name)) = none := by
    have := hiinfo (getFfiIndex mc.ffiNames (.extCall name))
    rwa [if_neg (by omega)] at this
  have hm := (sptAListLookup_eq_lookup _ mc.mmioInfo).trans hlk
  -- the target PC after the jump is that FFI entry
  have hjpc : t1.pc + (0 - BitVec.ofNat width (posVal s1.pc 0 code2 +
      (3 + getFfiIndex (mc.ffiNames.take (holThe (mmioPcsMinIndex mc.ffiNames)))
        (.extCall name)) * ffiOffset)) =
      p - BitVec.ofNat width ((3 + getFfiIndex mc.ffiNames (.extCall name)) * ffiOffset) := by
    rw [htpc, hidxt, BitVec.ofNat_add]; ring
  have hpc2 : mc.target.getPc ms2 =
      p - BitVec.ofNat width ((3 + getFfiIndex mc.ffiNames (.extCall name)) * ffiOffset) := by
    rw [hgpc]; simp only [asmUpd, jumpToOffset, AsmSem.updPc]; exact hjpc
  rw [← hpc2] at hnp hnh hnc hfi
  have hn : ¬ (mc.progAddresses (mc.target.getPc ms2) ∧
      mc.target.getPc ms2 ∉ mc.ffiEntryPcs) := fun h => hnp h.1
  -- the target reads the same two bytearrays
  have hreg : ∀ r, asmRegOkExact r mc.target.config = true →
      mc.target.getReg ms2 r = t1.regs r := by
    intro r hr
    simp only [asmRegOkExact, Bool.and_eq_true, decide_eq_true_eq, Bool.not_eq_true'] at hr
    exact hgreg r hr
  classical
  have hfun : (fun a => if mc.progAddresses a then some (mc.target.getByte ms2 a) else none) =
      (fun a => if mc.progAddresses a then some (t1.mem a) else none) := by
    funext a
    by_cases ha : mc.progAddresses a
    · rw [if_pos ha, if_pos ha, hgmem a (c3 ▸ ha)]; rfl
    · rw [if_neg ha, if_neg ha]
  have hrd : readFfiBytearraysHOL mc ms2 = (some conf, some bytes2) := by
    simp only [readFfiBytearraysHOL, readFfiBytearrayHOL, hfun]
    rw [c7, c9, c11, c13, hreg _ c6, hreg _ c8, hreg _ c10, hreg _ c12,
      wordLocVal_word_target (c30 _) hptr, wordLocVal_word_target (c30 _) hlen,
      wordLocVal_word_target (c30 _) hptr2, wordLocVal_word_target (c30 _) hlen2,
      readBytearray_stateRel mc code2 labs p s1 t1 ms1 _ _ _ ⟨hrel, hrd1⟩,
      readBytearray_stateRel mc code2 labs p s1 t1 ms1 _ _ _ ⟨hrel, hrd2⟩]
  have hstep : ∀ c, evaluateTargetHOL (shiftInterfer l mc) s1.ffi (c + 1) ms2 =
      match callFFIHOL s1.ffi (.extCall name) conf bytes2 with
      | .final e => (.halt (.ffiOutcome e), ms2, s1.ffi)
      | .ret newFfi newBytes =>
          evaluateTargetHOL { shiftInterfer l mc with ffiInterfer := holShiftSeq 1 mc.ffiInterfer }
            newFfi c (mc.ffiInterfer 0 (getFfiIndex mc.ffiNames (.extCall name), newBytes, ms2)) :=
    fun c => evaluateTarget_extCall (shiftInterfer l mc) s1.ffi c ms2 _ name conf bytes2
      hn hnh hnc hfi he hm hrd
  cases hcall : callFFIHOL s1.ffi (.extCall name) conf bytes2 with
  | final e =>
    rw [hcall] at hev
    obtain ⟨rfl, rfl⟩ := Prod.mk.inj hev
    refine ⟨l, ms2, clockBound_final (lineSteps_le hcost hpos hlq), fun r hr => ?_⟩
    have hr0 : r ≠ 0 := fun h0 => by have := hr.mpr h0; cases this
    obtain ⟨r', rfl⟩ : ∃ r', r = r' + 1 := ⟨r - 1, by omega⟩
    rw [Nat.add_comm l, (hl _).1, hstep, hcall]
  | ret newFfi newBytes =>
    rw [hcall] at hev
    have hlenb : newBytes.length = len2.toNat :=
      (StackRemove.callFFILengthHOL _ _ _ _ _ _ hcall).trans (readBytearrayWordHOL_length _ _ _ _ hrd2)
    have hrd2' : readBytearrayWordHOL start2 newBytes.length
        (memLoadByteAuxExact s1.memory s1.memDomain s1.be) = some bytes2 := by
      rw [hlenb]; exact hrd2
    have hstart2 : t1.regs s1.ptr2Reg = start2 := wordLocVal_word_target (c30 _) hptr2
    have hlinkv : t1.regs s1.linkReg = p + BitVec.ofNat width (posVal newPc 0 code2) := by
      have := c30 s1.linkReg
      rw [hlink] at this
      simp only [wordLocVal, c28 n1 n2 newPc hloc, Option.some.injEq] at this
      exact this.symm
    -- the returned registers are the external-call oracle's
    obtain ⟨hres1, hres2⟩ := oracleTie_extCallResidues mc ms1 ms2 s1 l _ name conf bytes2 newBytes
      newFfi t1 ⟨ht, fun k => (hl k).2.1, hn, hnh, hnc, hfi, he, hlk, hrd, hcall⟩
    have hts2 : targetStateRel mc.target
        { t1 with
          pc := p - BitVec.ofNat width ((3 + getFfiIndex mc.ffiNames (.extCall name)) * ffiOffset) }
        ms2 := by
      have := (hl 0).2.2.1
      simp only [asmUpd, jumpToOffset, AsmSem.updPc, hjpc] at this
      exact this
    have htrel := c16 ms2 0 _ newBytes t1 conf bytes2 s1.ffi newFfi i
      ⟨hi, hidx, hrd, .refl, by rw [he]; exact hcall, c3, hts2,
        by rw [hlinkv]; exact stateRel_aligned_target hrel (encoderCorrect_of_bounded hec) newPc⟩
    dsimp only at htrel
    rw [← hres1, ← hres2, hstart2, hlinkv] at htrel
    -- the complete relation after the call
    have hdom : ∀ a, s1.memDomain (riscvByteAlignHOL a) = true → s1.memDomain a = true :=
      fun a h => (c31 a (by rwa [← riscvByteAlignHOL_eq c2])).2.1
    have hbe : s1.be = mc.target.config.bigEndian := c40.trans c44
    have hrel'0 := stateRel_ffiReturn hrel newFfi ⟨_, _, _, _, hcall⟩
      (fun r => getRegValue (s1.ioRegs 0 (.extCall name) r) (s1.regs r) WordLocW.word)
      (fun r => s1.ioFpRegs 0 r)
      (writeBytearrayExact start2 newBytes s1.memory s1.memDomain s1.be)
      (holShiftSeq 1 s1.ioRegs) (holShiftSeq 1 s1.ioFpRegs) newPc (s1.clock - 1)
      _ _ _ _ htrel
      (fun r => by
        cases hio : s1.ioRegs 0 (.extCall name) r with
        | none => simpa [getRegValue] using c30 r
        | some v => simp [getRegValue, wordLocVal])
      (fun _ => rfl)
      (fun a ha => by
        obtain ⟨h1, h2, h3⟩ := c31 a ha
        have := callFFI_bytearray_lemma mc p labs s1 t1 a newBytes start2 bytes2
          ⟨ha, c2, h1, h2, hbe, hrd2', by rw [← hbe]; exact h3⟩
        simpa only [← hbe] using this)
      (fun a ha => asmWriteBytearray_outside s1.memory s1.memDomain s1.be t1.mem hdom newBytes
        start2 bytes2 hrd2' a ha)
      rfl
    have hrel' := stateRel_shiftInterfer _ _ _ _ _ _ _ l hrel'0
    -- the oracle tie after the FFI interference
    have ht2 := oracleTie_shiftInterfer mc ms1 ms2 s1 l ⟨ht, fun k => (hl k).2.1⟩
    have hnext := nextInterferenceExtCall (shiftInterfer l mc) s1.ffi ms2 _ name conf bytes2
      newBytes newFfi ⟨hn, hnh, hnc, hfi, he, hm, hrd, hcall⟩
    have ht3 : oracleTie { shiftInterfer l mc with ffiInterfer := holShiftSeq 1 mc.ffiInterfer }
        (mc.ffiInterfer 0 (getFfiIndex mc.ffiNames (.extCall name), newBytes, ms2))
        { s1 with
          memory := writeBytearrayExact start2 newBytes s1.memory s1.memDomain s1.be
          ffi := newFfi
          ioRegs := holShiftSeq 1 s1.ioRegs
          ioFpRegs := holShiftSeq 1 s1.ioFpRegs
          regs := fun r => getRegValue (s1.ioRegs 0 (.extCall name) r) (s1.regs r) WordLocW.word
          fpRegs := fun r => s1.ioFpRegs 0 r
          pc := newPc
          clock := s1.clock - 1 } :=
      oracleTie_ffiNext (shiftInterfer l mc) ms2 s1 _ _ newBytes ms2 _ _ newFfi
        ⟨ht2, hnext, rfl, rfl, rfl, rfl, rfl⟩
    obtain ⟨k, ms3, hb, hk⟩ := ih len start len2 start2 n1 n2 conf bytes2 newPc newFfi newBytes
      hlen hptr hlen2 hptr2 hlink hrd1 hrd2 hloc hcall res _ s2 code2 labs _ _ p
      ⟨ht3, hev, hres, hec, hrel', hcost⟩
    refine ⟨k + (l + 1), ms3,
      clockBound_step rfl hclock hb (Nat.succ_le_succ (lineSteps_le hcost hpos hlq)),
      fun r hr => ?_⟩
    rw [show k + (l + 1) + r = ((k + r) + 1) + l by omega, (hl _).1, hstep, hcall]
    exact hk r hr

end InitECandidate.Solver.Compiler.LabToTarget
