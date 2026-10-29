import InitECandidate.Proofs.WordStages.Optimize82
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source98
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody98_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody98_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody98_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody98_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody98_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551576#64))

def optimizedBody98_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody98_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody98_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 640#64)

def optimizedBody98_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody98_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody98_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody98_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody98_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_10 optimizedBody98_11

def optimizedBody98_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody98_9, 98, 2)) (some 68) ([2]) (some (2, optimizedBody98_12, 98, 3))

def optimizedBody98_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551576#64)))

def optimizedBody98_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody98_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody98_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_16 optimizedBody98_0

def optimizedBody98_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_15 optimizedBody98_17

def optimizedBody98_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_14 optimizedBody98_18

def optimizedBody98_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_3 optimizedBody98_19

def optimizedBody98_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_2 optimizedBody98_20

def optimizedBody98_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_1 optimizedBody98_21

def optimizedBody98_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_6 optimizedBody98_22

def optimizedBody98_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_13 optimizedBody98_23

def optimizedBody98_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_8 optimizedBody98_24

def optimizedBody98_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_7 optimizedBody98_25

def optimizedBody98_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_6 optimizedBody98_26

def optimizedBody98_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_6 optimizedBody98_0

def optimizedBody98_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody98_27 optimizedBody98_28

def optimizedBody98_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody98_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody98_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody98_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_31 optimizedBody98_32

def optimizedBody98_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_30 optimizedBody98_33

def optimizedBody98_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_6 optimizedBody98_34

def optimizedBody98_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_29 optimizedBody98_35

def optimizedBody98_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_5 optimizedBody98_36

def optimizedBody98_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_4 optimizedBody98_37

def optimizedBody98_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_3 optimizedBody98_38

def optimizedBody98_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_2 optimizedBody98_39

def optimizedBody98_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_1 optimizedBody98_40

def optimizedBody98_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody98_0 optimizedBody98_41

def oracle98 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2)))
          0
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 1
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 0)))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
        Flapjack.Spt.ln)))
def optimized98 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(98, 1, optimizedBody98_42)
theorem optimize98_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source98, oracle98) = optimized98 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize98_eq
end InitECandidate.Proofs.WordStages
