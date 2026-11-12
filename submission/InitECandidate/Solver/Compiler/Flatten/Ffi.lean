import InitECandidate.Solver.Compiler.Flatten.Leaves

/-!
# Bounded `flatten_correct`: `FFI`, `Install`, `ShMemOp`

Bounded copies of Flapjack's `StackToLab/Proofs/FlattenCorrect/{Ffi,Install,ShMem}.lean`.
`FFI` and `Install` run two LabSem lines (`LocValue` of the return label, then the call), so
their witness is `2 = 2 * psize`; `ShMemOp` is paid by its own StackSem tick (witness `0`).
-/

namespace InitECandidate.Solver.Compiler.Flatten

open Flapjack hiding flattenHOL findLabHOL
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.StackToLab.Proofs
open Flapjack.Compiler.Backend.StackToLab (flattenHOL findLabHOL negateHOL compileJumpHOL isSeqHOL
  progToSectionHOL stackIsSkip)
open Flapjack.Compiler.Backend.LabLang Flapjack.Compiler.Backend.LabSem
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.StackToLab.Proofs.CodeInstalled
open Flapjack.Compiler.Backend.StackToLab.Proofs.StateRel
open Flapjack.Compiler.Backend.StackToLab.Proofs.FlattenHelpers
open Flapjack.Compiler.Backend.StackToLab.Proofs.FlattenCorrect

set_option autoImplicit false

section
variable {width : Nat} [NeZero width] {C F : Type}

/-- `FFI` case. -/
theorem flattenCorrectFfiB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (f : Basis.Pure.MlString.MlString) (ptr len ptr2 len2 ret : Nat) :
    FlattenPropB S (.ffi f ptr len ptr2 len2 ret : HolProg width) s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, nerr, rel, ca, inst, -⟩ - -
  rw [StackSemEvaluate.evaluate_ffi] at ev
  simp only [StackProps.callArgs] at ca
  obtain ⟨rfl, rfl, rfl, rfl, rfl⟩ := ca
  have hinst : codeInstalled t1.pc [.labAsm (.locValue t1.linkReg (.lab n l)) 0 [] 0,
      .labAsm (.callFFI f) 0 [] 0, .label n l 0] t1.code := by
    simpa [flattenHOL, appListAppendList] using inst
  simp only [isLabelHOL, Bool.false_eq_true, if_false, if_true,
    codeInstalled] at hinst
  obtain ⟨fetch0, fetch1, locL, -⟩ := hinst
  obtain ⟨-, -, hmem, hdom, -, hbe, hffiEq, hclk, -, -, -, hnf, d13, d14, d15, d16, -⟩ := id rel
  have err : ∀ {x : StackSemStateFiniteExact width C F},
      (some StackSemResult.error, x) = (r, s2) → False := fun e => by
    simp only [Prod.mk.injEq] at e; exact nerr e.1.symm
  split at ev
  · rename_i w w2 w3 w4 hlen hptr hlen2 hptr2
    have rlen := InstCorrect.regOfLookup rel hlen
    have rptr := InstCorrect.regOfLookup rel hptr
    have rlen2 := InstCorrect.regOfLookup rel hlen2
    have rptr2 := InstCorrect.regOfLookup rel hptr2
    split at ev
    · rename_i cfg bytes hcfg hbytes
      rw [← hmem, ← hdom, ← hbe] at hcfg hbytes
      -- the two LabSem steps from any clock `c + 2`
      have step : ∀ c, evaluate { t1 with clock := c + 2 } =
          match callFFIHOL t1.ffi (.extCall f) cfg bytes with
          | .final outcome => (.halt (.ffiOutcome outcome),
              incPc (decClock (updReg t1.linkReg (.loc n l) { t1 with clock := c + 2 })))
          | .ret newFfi returned => evaluate { t1 with
              memory := writeBytearrayExact w4 returned t1.memory t1.memDomain t1.be
              ffi := newFfi
              ioRegs := holShiftSeq 1 t1.ioRegs
              ioFpRegs := holShiftSeq 1 t1.ioFpRegs
              regs := fun r => getRegValue (t1.ioRegs 0 (.extCall f) r)
                ((fun x => if x = t1.linkReg then WordLocW.loc n l else t1.regs x) r)
                WordLocW.word
              fpRegs := fun r => t1.ioFpRegs 0 r
              pc := t1.pc + 2
              clock := c } := by
        intro c
        rw [evaluate]
        simp only [show c + 2 ≠ 0 by omega, if_false, asmFetch, fetch0, getPcValue, locL,
          reduceCtorEq]
        rw [evaluate]
        simp only [incPc, decClock, updReg, labToLoc, show c + 2 - 1 ≠ 0 by omega, if_false,
          asmFetch, fetch1, Ne.symm d13, Ne.symm d14, Ne.symm d15, Ne.symm d16, if_true,
          rlen, rptr, rlen2, rptr2, hcfg, hbytes, locL]
        cases callFFIHOL t1.ffi (.extCall f) cfg bytes with
        | final o => rfl
        | ret newFfi returned =>
          simp only
          congr 1
      rw [← hffiEq] at ev
      split at ev
      · rename_i outcome hffi
        simp only [Prod.mk.injEq] at ev
        obtain ⟨rfl, rfl⟩ := ev
        refine ⟨2, incPc (decClock (updReg t1.linkReg (.loc n l)
          { t1 with clock := t1.clock + 2 })), le_flatBound_leaf (le_refl _), ?_, ?_, ?_⟩
        · rw [step, hffi]
        · simp [incPc, decClock, updReg, hffiEq]
        · simp only [incPc, decClock, updReg]; omega
      · rename_i newFfi returned hffi
        simp only [Prod.mk.injEq] at ev
        obtain ⟨rfl, rfl⟩ := ev
        refine ⟨2, { t1 with
              memory := writeBytearrayExact w4 returned t1.memory t1.memDomain t1.be
              ffi := newFfi
              ioRegs := holShiftSeq 1 t1.ioRegs
              ioFpRegs := holShiftSeq 1 t1.ioFpRegs
              regs := fun r => getRegValue (t1.ioRegs 0 (.extCall f) r)
                ((fun x => if x = t1.linkReg then WordLocW.loc n l else t1.regs x) r)
                WordLocW.word
              fpRegs := fun r => t1.ioFpRegs 0 r
              pc := t1.pc + 2 }, le_flatBound_leaf (le_refl _), fun ck1 => ?_, rfl, rfl, rfl,
          rfl, rfl, List.prefix_refl _, ?_, ?_⟩
        · rw [show t1.clock + 2 + ck1 = (t1.clock + ck1) + 2 by omega, step, hffi]
        · simp [flattenHOL, appListAppendList, isLabelHOL]
        · have := stateRelFfiRet rel f t1.linkReg rfl (.loc n l)
            (writeBytearrayExact w4 returned t1.memory t1.memDomain t1.be) newFfi (t1.pc + 2)
          simpa [hmem, hdom, hbe] using this
    · exact (err ev).elim
  · exact (err ev).elim

/-- `Install` case. -/
theorem flattenCorrectInstallB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (ptr len dptr dlen ret : Nat) :
    FlattenPropB S (.install ptr len dptr dlen ret : HolProg width) s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, nerr, rel, ca, inst, -⟩ - -
  rw [StackSemEvaluate.evaluate_install] at ev
  simp only [StackProps.callArgs] at ca
  obtain ⟨rfl, rfl, rfl⟩ := ca
  have hinst : codeInstalled t1.pc [.labAsm (.locValue t1.linkReg (.lab n l)) 0 [] 0,
      .labAsm .install 0 [] 0, .label n l 0] t1.code := by
    simpa [flattenHOL, appListAppendList] using inst
  obtain ⟨fetch0, i2⟩ := lineAt rfl hinst
  obtain ⟨fetch1, i3⟩ := lineAt rfl i2
  obtain ⟨locL, -⟩ := labelAt i3
  have err : ∀ {x : StackSemStateFiniteExact width C F},
      (some StackSemResult.error, x) = (r, s2) → False := fun e => by
    simp only [Prod.mk.injEq] at e; exact nerr e.1.symm
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, d13, d14, -, -, -, -, -, -, -, h22, h23, h24, -⟩ :=
    id rel
  have hus := (relNoStack rel).1
  rcases hx : StackSemStateOps.getVar t1.ptrReg s1 with _ | ⟨w1 | ⟨_, _⟩⟩ <;>
    rcases hy : StackSemStateOps.getVar t1.lenReg s1 with _ | ⟨w2 | ⟨_, _⟩⟩ <;>
    rcases hz : StackSemStateOps.getVar dptr s1 with _ | ⟨w3 | ⟨_, _⟩⟩ <;>
    rcases hw : StackSemStateOps.getVar dlen s1 with _ | ⟨w4 | ⟨_, _⟩⟩ <;>
    simp only [hx, hy, hz, hw] at ev <;> try exact (err ev).elim
  rcases ho : s1.compileOracle 0 with ⟨cfg, progs, bm⟩
  have hprogs : (s1.compileOracle 0).2.1 = progs := by rw [ho]
  simp only [ho, hus, Bool.false_eq_true, if_false] at ev
  rcases hfl : wordSemBufferFlush s1.codeBuffer w1 w2 with _ | ⟨bytes, cb⟩
  · simp only [hfl] at ev; exact (err ev).elim
  simp only [hfl] at ev
  rcases hc : s1.compile cfg progs with _ | ⟨bytes', cfg'⟩
  · simp only [hc] at ev; exact (err ev).elim
  simp only [hc] at ev
  rcases hpr : progs with _ | ⟨⟨k, p0⟩, rest⟩
  · rw [hpr] at ev; exact (err ev).elim
  rw [hpr] at ev
  simp only at ev
  split at ev
  swap; · exact (err ev).elim
  rename_i hv
  simp only [Prod.mk.injEq] at ev
  obtain ⟨rfl, rfl⟩ := ev
  rw [← hpr]
  have ho' : t1.compileOracle 0 = (cfg, progs.map progToSectionHOL) := by
    rw [h24]; simp [ho]
  have hc' : t1.compile cfg (progs.map progToSectionHOL) = some (bytes, cfg') := by
    have := congrFun (congrFun h23 cfg) progs
    rw [← this, hc, hv.1]
  have hcfg : (t1.compileOracle 1).1 = cfg' := by
    rw [h24]; simpa [holShiftSeq] using hv.2.2
  have hmap : progs.map progToSectionHOL = ⟨k, (progToSectionHOL (k, p0)).lines⟩ ::
      rest.map progToSectionHOL := by
    rw [hpr]; simp [progToSection_eq]
  refine ⟨2, { t1 with
      pc := t1.pc + 1 + 1
      codeBuffer := cb
      code := t1.code ++ progs.map progToSectionHOL
      ccRegs := holShiftSeq 1 t1.ccRegs
      ccFpRegs := holShiftSeq 1 t1.ccFpRegs
      regs := fun r => if r = t1.ptrReg then .loc k 0 else
        getRegValue (t1.ccRegs 0 r) (if r = t1.linkReg then .loc n l else t1.regs r)
          WordLocW.word
      fpRegs := fun r => t1.ccFpRegs 0 r
      compileOracle := holShiftSeq 1 t1.compileOracle }, le_flatBound_leaf (le_refl _),
    fun ck1 => ?_, rfl, rfl, rfl, rfl, rfl, List.prefix_append _ _, ?_, ?_⟩
  · rw [show t1.clock + 2 + ck1 = (t1.clock + ck1 + 1) + 1 by omega, locValueStep _ fetch0 locL]
    refine (installStep (t := { t1 with
        regs := fun key => if key = t1.linkReg then .loc n l else t1.regs key
        pc := t1.pc + 1 }) (w1 := w1) (w2 := w2) (t1.clock + ck1) fetch1
      (by simp [Ne.symm d14, InstCorrect.regOfLookup rel hx])
      (by simp [Ne.symm d13, InstCorrect.regOfLookup rel hy])
      (by simp) (by simpa [← h22] using hfl) locL ho' hc' hmap hcfg).trans ?_
    rfl
  · simp [flattenHOL, appListAppendList, isLabelHOL]
  · rw [hpr] at hprogs
    have := stateRelInstall rel hprogs bm cb s1.dataBuffer k n l (t1.pc + 1 + 1)
    rw [← hpr] at this
    rwa [hus] at this

/-- Simulation of a successful-dispatch shared-memory load of size `k` (witness `0`). -/
theorem shMemLoadSimB {s1 : StackSemStateFiniteExact width C F}
    {t1 : Flapjack.Compiler.Backend.LabSem.State width C F} {op : HolMemop} {reg a : Nat}
    {w addr : BitVec width} {k : Nat} {t : Bool} {r : Option (StackSemResult width)}
    {s2 : StackSemStateFiniteExact width C F} {n l : Nat} {cs bs : List Nat}
    (rel : stateRel s1 t1)
    (fetch : asmFetchAux t1.pc t1.code = some (.asm (.shareMem op reg (.addr a w)) [] 0))
    (cnz : t1.clock ≠ 0) (haddr : addrValue (.addr a w) t1 = some addr)
    (hop : ∀ c, shareMemOp op reg (.addr a w) { t1 with clock := c } =
      shareMemLoad reg (.addr a w) { t1 with clock := c } k)
    (hdom : (if k = 0 then addr.toNat % (width / 8) == 0 && t1.sharedMemDomain addr
      else t1.sharedMemDomain (riscvByteAlignHOL addr)) = true)
    (hlen : ((appListAppend (flattenHOL t (.shMemOp op reg (.addr a w)) n l cs bs).1).filter
      (fun x => !isLabelHOL x)).length = 1)
    (ev : (match callFFIHOL (StackSemStateOps.decClock s1).ffi (.sharedMem .mappedRead)
        [BitVec.ofNat 8 k] (panWordToBytesHOL addr false) with
      | .final outcome => (some (.finalFFI outcome), StackSemStateOps.decClock s1)
      | .ret newFfi newBytes => (none, { StackSemStateOps.decClock s1 with
          regs := (StackSemStateOps.decClock s1).regs.updateEq
            (reg, .word (panWordOfBytesHOL false 0 newBytes))
          ffi := newFfi })) = (r, s2)) :
    FlattenConclB 0 (.shMemOp op reg (.addr a w) : HolProg width) t r s2 n l cs bs t1 := by
  have ffiEq := relFfi rel
  have clk := relClock rel
  have lab : ∀ c, shareMemLoad reg (.addr a w) { t1 with clock := c } k =
      match callFFIHOL t1.ffi (.sharedMem .mappedRead) [BitVec.ofNat 8 k]
          (sharedMemoryWordBytes addr) with
      | .final outcome => some (.final outcome, { t1 with clock := c })
      | .ret f bytes => some (.ret f bytes, { t1 with
          clock := c - 1
          ffi := f
          regs := fun r => if r = reg then .word (wordOfBytesHOL8 false 0 bytes) else t1.regs r
          pc := t1.pc + 1 }) := by
    intro c
    simp only [shareMemLoad]
    rw [show addrValue (.addr a w) { t1 with clock := c } = some addr from haddr]
    simp only [hdom, if_true]
    cases callFFIHOL t1.ffi (.sharedMem .mappedRead) [BitVec.ofNat 8 k]
      (sharedMemoryWordBytes addr) <;> rfl
  rw [panWordToBytes_eq_shared,
    show (StackSemStateOps.decClock s1).ffi = t1.ffi from ffiEq.symm] at ev
  split at ev
  · rename_i outcome hffi
    simp only [Prod.mk.injEq] at ev
    obtain ⟨rfl, rfl⟩ := ev
    refine ⟨0, { t1 with clock := t1.clock + 0 }, le_refl _, ?_, ?_, ?_⟩
    · rw [evaluateShareMemStep (t := { t1 with clock := t1.clock + 0 }) (res := .final outcome)
        (t' := { t1 with clock := t1.clock + 0 }) (by simpa using cnz) fetch]
      rw [hop, lab, hffi]
    · simp [ffiEq, StackSemStateOps.decClock]
    · simp only [StackSemStateOps.decClock]; omega
  · rename_i ffi' bytes hffi
    simp only [Prod.mk.injEq] at ev
    obtain ⟨rfl, rfl⟩ := ev
    refine ⟨0, { t1 with
        ffi := ffi'
        regs := fun r => if r = reg then .word (wordOfBytesHOL8 false 0 bytes) else t1.regs r
        pc := t1.pc + 1
        clock := t1.clock - 1
        ioRegs := holShiftSeq 1 t1.ioRegs
        ioFpRegs := holShiftSeq 1 t1.ioFpRegs }, le_refl _, fun ck1 => ?_, rfl, rfl, rfl, rfl,
      rfl, List.prefix_refl _, by simp [hlen], ?_⟩
    · rw [evaluateShareMemStep (t := { t1 with clock := t1.clock + 0 + ck1 })
        (res := .ret ffi' bytes)
        (t' := { t1 with
          clock := t1.clock + 0 + ck1 - 1
          ffi := ffi'
          regs := fun r => if r = reg then .word (wordOfBytesHOL8 false 0 bytes) else t1.regs r
          pc := t1.pc + 1 }) (by simp; omega) fetch]
      · dsimp only
        congr 1
        simp only [Flapjack.Compiler.Backend.LabSem.State.mk.injEq, and_true, true_and]
        omega
      · rw [hop, lab, hffi]
    · have := stateRelShMemRet rel ffi' (t1.pc + 1)
        (some (reg, .word (wordOfBytesHOL8 false 0 bytes)))
      simpa [panWordOfBytes_eq_wordOfBytesHOL8, StackSemStateOps.decClock] using this

/-- Simulation of a successful-dispatch shared-memory store of size `k` (witness `0`). -/
theorem shMemStoreSimB {s1 : StackSemStateFiniteExact width C F}
    {t1 : Flapjack.Compiler.Backend.LabSem.State width C F} {op : HolMemop} {reg a : Nat}
    {w addr v : BitVec width} {k : Nat} {t : Bool} {r : Option (StackSemResult width)}
    {s2 : StackSemStateFiniteExact width C F} {n l : Nat} {cs bs : List Nat}
    {payload : List (BitVec 8)}
    (rel : stateRel s1 t1)
    (fetch : asmFetchAux t1.pc t1.code = some (.asm (.shareMem op reg (.addr a w)) [] 0))
    (cnz : t1.clock ≠ 0) (haddr : addrValue (.addr a w) t1 = some addr)
    (hv : t1.regs reg = .word v)
    (hop : ∀ c, shareMemOp op reg (.addr a w) { t1 with clock := c } =
      shareMemStore reg (.addr a w) { t1 with clock := c } k)
    (hdom : (if k = 0 then addr.toNat % (width / 8) == 0 && t1.sharedMemDomain addr
      else t1.sharedMemDomain (riscvByteAlignHOL addr)) = true)
    (hpay : payload = (if k = 0 then sharedMemoryWordBytes v
      else (sharedMemoryWordBytes v).take k) ++ sharedMemoryWordBytes addr)
    (hlen : ((appListAppend (flattenHOL t (.shMemOp op reg (.addr a w)) n l cs bs).1).filter
      (fun x => !isLabelHOL x)).length = 1)
    (ev : (match callFFIHOL (StackSemStateOps.decClock s1).ffi (.sharedMem .mappedWrite)
        [BitVec.ofNat 8 k] payload with
      | .final outcome => (some (.finalFFI outcome), StackSemStateOps.decClock s1)
      | .ret newFfi _ => (none, { StackSemStateOps.decClock s1 with ffi := newFfi })) =
        (r, s2)) :
    FlattenConclB 0 (.shMemOp op reg (.addr a w) : HolProg width) t r s2 n l cs bs t1 := by
  have ffiEq := relFfi rel
  have clk := relClock rel
  have lab : ∀ c, shareMemStore reg (.addr a w) { t1 with clock := c } k =
      match callFFIHOL t1.ffi (.sharedMem .mappedWrite) [BitVec.ofNat 8 k] payload with
      | .final outcome => some (.final outcome, { t1 with clock := c })
      | .ret f bytes => some (.ret f bytes, { t1 with
          clock := c - 1
          ffi := f
          pc := t1.pc + 1 }) := by
    intro c
    simp only [shareMemStore]
    rw [show ({ t1 with clock := c } : Flapjack.Compiler.Backend.LabSem.State width C F).regs reg
      = .word v from hv]
    simp only
    rw [show addrValue (.addr a w) { t1 with clock := c } = some addr from haddr]
    simp only [hdom, if_true, ← hpay]
    cases callFFIHOL t1.ffi (.sharedMem .mappedWrite) [BitVec.ofNat 8 k] payload <;> rfl
  rw [show (StackSemStateOps.decClock s1).ffi = t1.ffi from ffiEq.symm] at ev
  split at ev
  · rename_i outcome hffi
    simp only [Prod.mk.injEq] at ev
    obtain ⟨rfl, rfl⟩ := ev
    refine ⟨0, { t1 with clock := t1.clock + 0 }, le_refl _, ?_, ?_, ?_⟩
    · rw [evaluateShareMemStep (t := { t1 with clock := t1.clock + 0 }) (res := .final outcome)
        (t' := { t1 with clock := t1.clock + 0 }) (by simpa using cnz) fetch]
      rw [hop, lab, hffi]
    · simp [ffiEq, StackSemStateOps.decClock]
    · simp only [StackSemStateOps.decClock]; omega
  · rename_i ffi' bytes hffi
    simp only [Prod.mk.injEq] at ev
    obtain ⟨rfl, rfl⟩ := ev
    refine ⟨0, { t1 with
        ffi := ffi'
        pc := t1.pc + 1
        clock := t1.clock - 1
        ioRegs := holShiftSeq 1 t1.ioRegs
        ioFpRegs := holShiftSeq 1 t1.ioFpRegs }, le_refl _, fun ck1 => ?_, rfl, rfl, rfl, rfl,
      rfl, List.prefix_refl _, by simp [hlen], ?_⟩
    · rw [evaluateShareMemStep (t := { t1 with clock := t1.clock + 0 + ck1 })
        (res := .ret ffi' bytes)
        (t' := { t1 with clock := t1.clock + 0 + ck1 - 1, ffi := ffi', pc := t1.pc + 1 })
        (by simp; omega) fetch]
      · dsimp only
        congr 1
        simp only [Flapjack.Compiler.Backend.LabSem.State.mk.injEq, and_true, true_and]
        omega
      · rw [hop, lab, hffi]
    · have := stateRelShMemRet rel ffi' (t1.pc + 1) none
      simpa [StackSemStateOps.decClock] using this

/-- `ShMemOp` case. -/
theorem flattenCorrectShMemOpB (S : Nat) (s1 : StackSemStateFiniteExact width C F)
    (op : HolMemop) (reg a : Nat) (w : BitVec width) :
    FlattenPropB S (.shMemOp op reg (.addr a w) : HolProg width) s1 := by
  rintro t r s2 n l cs bs t1 ⟨ev, nerr, rel, -, inst, -⟩ - -
  refine FlattenConclB.mono (bnd := 0) ?_ (Nat.zero_le _)
  rw [StackSemEvaluate.evaluate_shMemOp] at ev
  have fetch : asmFetchAux t1.pc t1.code = some (.asm (.shareMem op reg (.addr a w)) [] 0) :=
    fetchSingle rfl (by simpa [flattenHOL, appListAppendList] using inst)
  have clk := relClock rel
  have ffiEq := relFfi rel
  split at ev
  · rename_i addr hexp
    have haddr : addrValue (.addr a w) t1 = some addr := InstCorrect.addrOfWordExp rel hexp
    split_ifs at ev with h0
    · simp only [Prod.mk.injEq] at ev
      obtain ⟨rfl, rfl⟩ := ev
      refine ⟨0, t1, le_refl _, fun ck1 => by simp, rfl, rfl, rfl, rfl, rfl, List.prefix_refl _,
        ?_, ?_⟩
      · simp [StackSemStateOps.emptyEnv, ffiEq]
      · omega
    · have cnz : t1.clock ≠ 0 := by omega
      have hlen : ((appListAppend (flattenHOL t (.shMemOp op reg (.addr a w)) n l cs bs).1).filter
          (fun x => !isLabelHOL x)).length = 1 := by
        simp [flattenHOL, appListAppendList, isLabelHOL]
      have good : goodDimindex width := by
        obtain ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
          _, g⟩ := rel
        exact g
      have pos : 0 < width / 8 := by rcases good with h | h <;> subst h <;> decide
      have err : ∀ {x : StackSemStateFiniteExact width C F},
          (some StackSemResult.error, x) = (r, s2) → False := fun e => by
        simp only [Prod.mk.injEq] at e; exact nerr e.1.symm
      cases op
      case load =>
        simp only [StackSemShMem.shMemOp, StackSemShMem.shMemLoad] at ev
        split_ifs at ev with dom
        · exact shMemLoadSimB (k := 0) rel fetch cnz haddr (fun c => rfl)
            (by simp only [StackSemStateOps.decClock] at dom
                simp [relShMdomain rel, dom, relShAligned rel dom]) hlen ev
        · exact (err ev).elim
      case load8 =>
        simp only [StackSemShMem.shMemOp, StackSemShMem.shMemLoadByte] at ev
        split_ifs at ev with dom
        · exact shMemLoadSimB (k := 1) rel fetch cnz haddr (fun c => rfl)
            (by simp only [StackSemStateOps.decClock] at dom; simp [relShMdomain rel, dom])
            hlen ev
        · exact (err ev).elim
      case load16 =>
        simp only [StackSemShMem.shMemOp, StackSemShMem.shMemLoad16] at ev
        split_ifs at ev with dom
        · exact shMemLoadSimB (k := 2) rel fetch cnz haddr (fun c => rfl)
            (by simp only [StackSemStateOps.decClock] at dom; simp [relShMdomain rel, dom])
            hlen ev
        · exact (err ev).elim
      case load32 =>
        simp only [StackSemShMem.shMemOp, StackSemShMem.shMemLoad32] at ev
        split_ifs at ev with dom
        · exact shMemLoadSimB (k := 4) rel fetch cnz haddr (fun c => rfl)
            (by simp only [StackSemStateOps.decClock] at dom; simp [relShMdomain rel, dom])
            hlen ev
        · exact (err ev).elim
      case store =>
        simp only [StackSemShMem.shMemOp, StackSemShMem.shMemStore] at ev
        split at ev
        · rename_i v hv
          split_ifs at ev with dom
          · exact shMemStoreSimB (k := 0) rel fetch cnz haddr (InstCorrect.regOfLookup rel hv)
              (fun c => rfl)
              (by simp only [StackSemStateOps.decClock] at dom
                  simp [relShMdomain rel, dom, relShAligned rel dom])
              (by simp [panWordToBytes_eq_shared]) hlen ev
          · exact (err ev).elim
        · exact (err ev).elim
      case store8 =>
        simp only [StackSemShMem.shMemOp, StackSemShMem.shMemStoreByte] at ev
        split at ev
        · rename_i v hv
          split_ifs at ev with dom
          · exact shMemStoreSimB (k := 1) rel fetch cnz haddr (InstCorrect.regOfLookup rel hv)
              (fun c => rfl)
              (by simp only [StackSemStateOps.decClock] at dom; simp [relShMdomain rel, dom])
              (by simp [panWordToBytes_eq_shared, sharedBytesTakeOne v pos]) hlen ev
          · exact (err ev).elim
        · exact (err ev).elim
      case store16 =>
        simp only [StackSemShMem.shMemOp, StackSemShMem.shMemStore16] at ev
        split at ev
        · rename_i v hv
          split_ifs at ev with dom
          · exact shMemStoreSimB (k := 2) rel fetch cnz haddr (InstCorrect.regOfLookup rel hv)
              (fun c => rfl)
              (by simp only [StackSemStateOps.decClock] at dom; simp [relShMdomain rel, dom])
              (by simp [panWordToBytes_eq_shared]) hlen ev
          · exact (err ev).elim
        · exact (err ev).elim
      case store32 =>
        simp only [StackSemShMem.shMemOp, StackSemShMem.shMemStore32] at ev
        split at ev
        · rename_i v hv
          split_ifs at ev with dom
          · exact shMemStoreSimB (k := 4) rel fetch cnz haddr (InstCorrect.regOfLookup rel hv)
              (fun c => rfl)
              (by simp only [StackSemStateOps.decClock] at dom; simp [relShMdomain rel, dom])
              (by simp [panWordToBytes_eq_shared]) hlen ev
          · exact (err ev).elim
        · exact (err ev).elim
  · simp only [Prod.mk.injEq] at ev
    exact absurd ev.1.symm nerr

end

end InitECandidate.Solver.Compiler.Flatten
