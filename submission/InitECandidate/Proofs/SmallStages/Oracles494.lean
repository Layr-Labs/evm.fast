import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source494
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles494
def optimizedBody494_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody494_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody494_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody494_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody494_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody494_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody494_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 144#64))

def optimizedBody494_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody494_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody494_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody494_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody494_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody494_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody494_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody494_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_12 optimizedBody494_13

def optimizedBody494_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_9 optimizedBody494_14

def optimizedBody494_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_11 optimizedBody494_15

def optimizedBody494_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_10 optimizedBody494_16

def optimizedBody494_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_9 optimizedBody494_17

def optimizedBody494_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_8 optimizedBody494_18

def optimizedBody494_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody494_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody494_19 optimizedBody494_20

def optimizedBody494_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody494_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody494_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_10 optimizedBody494_23

def optimizedBody494_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_22 optimizedBody494_24

def optimizedBody494_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_8 optimizedBody494_25

def optimizedBody494_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_8 optimizedBody494_26

def optimizedBody494_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_21 optimizedBody494_27

def optimizedBody494_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_7 optimizedBody494_28

def optimizedBody494_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_6 optimizedBody494_29

def optimizedBody494_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_5 optimizedBody494_30

def optimizedBody494_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_4 optimizedBody494_31

def optimizedBody494_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_3 optimizedBody494_32

def optimizedBody494_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_2 optimizedBody494_33

def optimizedBody494_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_1 optimizedBody494_34

def optimizedBody494_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody494_0 optimizedBody494_35

def oracle494 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln) 0
          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 1)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 1 (Flapjack.Spt.ls 2))
          (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
      Flapjack.Spt.ln))
def optimized494 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(494, 1, optimizedBody494_36)
end InitECandidate.Proofs.SmallStages.Oracles494
