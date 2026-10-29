import InitECandidate.Proofs.WordStages.Optimize540
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source556
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody556_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody556_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody556_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody556_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody556_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody556_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody556_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_4 optimizedBody556_5

def optimizedBody556_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody556_3, 556, 2)) (some 470) ([2]) (some (2, optimizedBody556_6, 556, 3))

def optimizedBody556_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody556_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody556_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody556_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody556_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody556_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody556_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody556_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (0, 2), (8, 8), (44, 44)]

def optimizedBody556_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody556_15, 556, 4)) (some 467) ([2]) (some (2, optimizedBody556_6, 556, 5))

def optimizedBody556_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody556_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody556_3, 556, 6)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody556_6, 556, 7))

def optimizedBody556_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody556_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody556_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody556_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_21 optimizedBody556_5

def optimizedBody556_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody556_20, 556, 8)) (some 490) ([2]) (some (2, optimizedBody556_22, 556, 9))

def optimizedBody556_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody556_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody556_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody556_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_25 optimizedBody556_26

def optimizedBody556_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_24 optimizedBody556_27

def optimizedBody556_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_8 optimizedBody556_28

def optimizedBody556_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_23 optimizedBody556_29

def optimizedBody556_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_4 optimizedBody556_30

def optimizedBody556_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_19 optimizedBody556_31

def optimizedBody556_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_8 optimizedBody556_32

def optimizedBody556_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_18 optimizedBody556_33

def optimizedBody556_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_17 optimizedBody556_34

def optimizedBody556_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_8 optimizedBody556_35

def optimizedBody556_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_16 optimizedBody556_36

def optimizedBody556_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_4 optimizedBody556_37

def optimizedBody556_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_14 optimizedBody556_38

def optimizedBody556_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_13 optimizedBody556_39

def optimizedBody556_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_12 optimizedBody556_40

def optimizedBody556_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_11 optimizedBody556_41

def optimizedBody556_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_10 optimizedBody556_42

def optimizedBody556_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_9 optimizedBody556_43

def optimizedBody556_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_8 optimizedBody556_44

def optimizedBody556_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_7 optimizedBody556_45

def optimizedBody556_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_2 optimizedBody556_46

def optimizedBody556_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_1 optimizedBody556_47

def optimizedBody556_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody556_0 optimizedBody556_48

def oracle556 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)) 1
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln) 0
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 2)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
            (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))))
def optimized556 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(556, 1, optimizedBody556_49)
theorem optimize556_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source556, oracle556) = optimized556 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize556_eq
end InitECandidate.Proofs.WordStages
