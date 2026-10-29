import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data566
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate546
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody566_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "x")]

def globalBody566_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "extend_memory"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "x")]

def globalBody566_2 : Prog (BitVec 64) :=
.seq globalBody566_0 globalBody566_1

def globalBody566_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 120#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
            Flapjack.Exp.const 24#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "s"])

def globalBody566_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 128#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")

def globalBody566_5 : Prog (BitVec 64) :=
.seq globalBody566_3 globalBody566_4

def globalBody566_6 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 1#64)

def globalBody566_7 : Prog (BitVec 64) :=
.seq globalBody566_5 globalBody566_6

def globalBody566_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody566_9 : Prog (BitVec 64) :=
.seq globalBody566_7 globalBody566_8

def globalBody566_10 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "start"]) globalBody566_9

def globalBody566_11 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "size"]) globalBody566_10

def globalBody566_12 : Prog (BitVec 64) :=
.seq globalBody566_2 globalBody566_11

def globalBody566_13 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("extend_memory_cost1") ([Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.var Flapjack.VarKind.local "size"]) globalBody566_12

def globalBody566_14 : Prog (BitVec 64) :=
.decCall ("size") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody566_13

def globalBody566_15 : Prog (BitVec 64) :=
.decCall ("start") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody566_14

def globalData566 : Decl (BitVec 64) :=
.function { name := "op_revert", inline := false, exported := false, params := [], body := globalBody566_15, returnShape := (Flapjack.Shape.one) }
def globalOutput566 := Pancake.PanLang.declToHOL globalData566
end InitECandidate.Proofs.FrontendStages.Declarations
