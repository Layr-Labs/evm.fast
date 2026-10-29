import InitECandidate.Proofs.WordStages.Optimize458
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source474
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody474_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody474_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody474_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody474_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody474_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody474_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 112#64))

def optimizedBody474_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (2, 2)]

def optimizedBody474_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody474_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 6 192#64))

def optimizedBody474_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody474_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.reg 6)))

def optimizedBody474_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody474_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody474_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody474_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody474_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody474_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody474_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody474_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody474_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody474_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody474_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody474_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody474_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody474_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody474_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody474_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_22 optimizedBody474_25

def optimizedBody474_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_24 optimizedBody474_26

def optimizedBody474_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_23 optimizedBody474_27

def optimizedBody474_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_22 optimizedBody474_28

def optimizedBody474_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_21 optimizedBody474_29

def optimizedBody474_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_20 optimizedBody474_30

def optimizedBody474_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_19 optimizedBody474_31

def optimizedBody474_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_13 optimizedBody474_32

def optimizedBody474_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_18 optimizedBody474_33

def optimizedBody474_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_17 optimizedBody474_34

def optimizedBody474_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_16 optimizedBody474_35

def optimizedBody474_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_15 optimizedBody474_36

def optimizedBody474_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_14 optimizedBody474_37

def optimizedBody474_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_4 optimizedBody474_38

def optimizedBody474_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_13 optimizedBody474_39

def optimizedBody474_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_12 optimizedBody474_40

def optimizedBody474_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_11 optimizedBody474_41

def optimizedBody474_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_10 optimizedBody474_42

def optimizedBody474_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_9 optimizedBody474_43

def optimizedBody474_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_6 optimizedBody474_44

def optimizedBody474_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_8 optimizedBody474_45

def optimizedBody474_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_6 optimizedBody474_46

def optimizedBody474_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_7 optimizedBody474_47

def optimizedBody474_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_6 optimizedBody474_48

def optimizedBody474_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_5 optimizedBody474_49

def optimizedBody474_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_4 optimizedBody474_50

def optimizedBody474_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_3 optimizedBody474_51

def optimizedBody474_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_2 optimizedBody474_52

def optimizedBody474_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_1 optimizedBody474_53

def optimizedBody474_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody474_0 optimizedBody474_54

def oracle474 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
            3
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
          0
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 (Flapjack.Spt.ls 1)) 1
            (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
            1
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 3 Flapjack.Spt.ln) 1
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 2
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))))))
      Flapjack.Spt.ln))
def optimized474 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(474, 1, optimizedBody474_55)
theorem optimize474_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source474, oracle474) = optimized474 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize474_eq
end InitECandidate.Proofs.WordStages
