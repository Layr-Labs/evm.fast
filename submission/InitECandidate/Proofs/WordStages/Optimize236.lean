import InitECandidate.Proofs.WordStages.Optimize220
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source236
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody236_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (10, 2), (8, 4), (6, 6)]

def optimizedBody236_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody236_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody236_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody236_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551512#64))

def optimizedBody236_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody236_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 8), (48, 10), (50, 6)]

def optimizedBody236_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48), (48, 50)]

def optimizedBody236_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (48, 50)]

def optimizedBody236_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody236_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_8 optimizedBody236_9

def optimizedBody236_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody236_7, 236, 2)) (some 78) ([2, 4]) (some (2, optimizedBody236_10, 236, 3))

def optimizedBody236_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody236_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody236_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody236_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody236_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551512#64))

def optimizedBody236_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48)]

def optimizedBody236_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (6, 48)]

def optimizedBody236_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48)]

def optimizedBody236_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_19 optimizedBody236_9

def optimizedBody236_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody236_18, 236, 4)) (some 87) ([2, 4]) (some (2, optimizedBody236_20, 236, 5))

def optimizedBody236_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody236_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551512#64))

def optimizedBody236_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody236_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody236_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody236_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_26 optimizedBody236_9

def optimizedBody236_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody236_25, 236, 6)) (some 154) ([2, 4, 6]) (some (2, optimizedBody236_27, 236, 7))

def optimizedBody236_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody236_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody236_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody236_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_30 optimizedBody236_31

def optimizedBody236_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_29 optimizedBody236_32

def optimizedBody236_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_12 optimizedBody236_33

def optimizedBody236_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_28 optimizedBody236_34

def optimizedBody236_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_24 optimizedBody236_35

def optimizedBody236_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_23 optimizedBody236_36

def optimizedBody236_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_15 optimizedBody236_37

def optimizedBody236_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_14 optimizedBody236_38

def optimizedBody236_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_13 optimizedBody236_39

def optimizedBody236_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_22 optimizedBody236_40

def optimizedBody236_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_12 optimizedBody236_41

def optimizedBody236_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_21 optimizedBody236_42

def optimizedBody236_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_17 optimizedBody236_43

def optimizedBody236_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_16 optimizedBody236_44

def optimizedBody236_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_15 optimizedBody236_45

def optimizedBody236_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_14 optimizedBody236_46

def optimizedBody236_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_13 optimizedBody236_47

def optimizedBody236_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_12 optimizedBody236_48

def optimizedBody236_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_11 optimizedBody236_49

def optimizedBody236_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_6 optimizedBody236_50

def optimizedBody236_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_5 optimizedBody236_51

def optimizedBody236_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_4 optimizedBody236_52

def optimizedBody236_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_3 optimizedBody236_53

def optimizedBody236_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_2 optimizedBody236_54

def optimizedBody236_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_1 optimizedBody236_55

def optimizedBody236_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody236_0 optimizedBody236_56

def oracle236 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln) 3
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 Flapjack.Spt.ln)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0)))
            5 (Flapjack.Spt.ls 1)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 3)))
            4 (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22)))
            0 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 1 Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25 (Flapjack.Spt.ls 23))))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
def optimized236 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(236, 4, optimizedBody236_57)
theorem optimize236_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source236, oracle236) = optimized236 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize236_eq
end InitECandidate.Proofs.WordStages
