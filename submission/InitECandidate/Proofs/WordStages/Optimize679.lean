import InitECandidate.Proofs.WordStages.Optimize663
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source679
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody679_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 4), (0, 0)]

def optimizedBody679_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody679_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 0), (46, 6)]

def optimizedBody679_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (0, 46)]

def optimizedBody679_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (0, 46)]

def optimizedBody679_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody679_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_4 optimizedBody679_5

def optimizedBody679_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody679_3, 679, 2)) (some 78) ([2, 4]) (some (2, optimizedBody679_6, 679, 3))

def optimizedBody679_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody679_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody679_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 15230403791020821917#64)

def optimizedBody679_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody679_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 754611498739239741#64)

def optimizedBody679_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody679_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 7381016538464732716#64)

def optimizedBody679_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody679_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1011752739694698287#64)

def optimizedBody679_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody679_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody679_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody679_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody679_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_19 optimizedBody679_20

def optimizedBody679_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_18 optimizedBody679_21

def optimizedBody679_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_17 optimizedBody679_22

def optimizedBody679_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_9 optimizedBody679_23

def optimizedBody679_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_16 optimizedBody679_24

def optimizedBody679_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_15 optimizedBody679_25

def optimizedBody679_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_9 optimizedBody679_26

def optimizedBody679_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_14 optimizedBody679_27

def optimizedBody679_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_13 optimizedBody679_28

def optimizedBody679_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_9 optimizedBody679_29

def optimizedBody679_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_12 optimizedBody679_30

def optimizedBody679_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_11 optimizedBody679_31

def optimizedBody679_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_9 optimizedBody679_32

def optimizedBody679_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_10 optimizedBody679_33

def optimizedBody679_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_9 optimizedBody679_34

def optimizedBody679_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_8 optimizedBody679_35

def optimizedBody679_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_7 optimizedBody679_36

def optimizedBody679_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_2 optimizedBody679_37

def optimizedBody679_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_1 optimizedBody679_38

def optimizedBody679_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody679_0 optimizedBody679_39

def oracle679 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 0
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))
            (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
def optimized679 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(679, 3, optimizedBody679_40)
theorem optimize679_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source679, oracle679) = optimized679 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize679_eq
end InitECandidate.Proofs.WordStages
