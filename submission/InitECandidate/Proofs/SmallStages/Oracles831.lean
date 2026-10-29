import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source831
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles831
def optimizedBody831_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody831_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 128#64)

def optimizedBody831_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 2)]

def optimizedBody831_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody831_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 519#64)

def optimizedBody831_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody831_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody831_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_5 optimizedBody831_6

def optimizedBody831_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_4 optimizedBody831_7

def optimizedBody831_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_3 optimizedBody831_8

def optimizedBody831_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody831_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 4) optimizedBody831_9 optimizedBody831_10

def optimizedBody831_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody831_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody831_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody831_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody831_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody831_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody831_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551008#64))

def optimizedBody831_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody831_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody831_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_20 optimizedBody831_7

def optimizedBody831_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_19 optimizedBody831_21

def optimizedBody831_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_18 optimizedBody831_22

def optimizedBody831_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_17 optimizedBody831_23

def optimizedBody831_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_16 optimizedBody831_24

def optimizedBody831_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_15 optimizedBody831_25

def optimizedBody831_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_14 optimizedBody831_26

def optimizedBody831_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_13 optimizedBody831_27

def optimizedBody831_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_12 optimizedBody831_28

def optimizedBody831_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_3 optimizedBody831_29

def optimizedBody831_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_3 optimizedBody831_30

def optimizedBody831_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_11 optimizedBody831_31

def optimizedBody831_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_2 optimizedBody831_32

def optimizedBody831_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_1 optimizedBody831_33

def optimizedBody831_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody831_0 optimizedBody831_34

def oracle831 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 3
            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 0
            (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2)))))
      Flapjack.Spt.ln))
def optimized831 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(831, 2, optimizedBody831_35)
end InitECandidate.Proofs.SmallStages.Oracles831
