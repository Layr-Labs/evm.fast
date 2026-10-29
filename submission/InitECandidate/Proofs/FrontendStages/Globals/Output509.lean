import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data509
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate493
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody509_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_with_memory"
  [Flapjack.Exp.const 3#64, Flapjack.Exp.var Flapjack.VarKind.local "start",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 32#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def globalBody509_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "value",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.load Flapjack.Shape.one
                (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
              Flapjack.Exp.const 24#64]),
        Flapjack.Exp.var Flapjack.VarKind.local "s"]]

def globalBody509_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody509_3 : Prog (BitVec 64) :=
.seq globalBody509_1 globalBody509_2

def globalBody509_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody509_5 : Prog (BitVec 64) :=
.seq globalBody509_3 globalBody509_4

def globalBody509_6 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "start"]) globalBody509_5

def globalBody509_7 : Prog (BitVec 64) :=
.seq globalBody509_0 globalBody509_6

def globalBody509_8 : Prog (BitVec 64) :=
.decCall ("value") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody509_7

def globalBody509_9 : Prog (BitVec 64) :=
.decCall ("start") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody509_8

def globalData509 : Decl (BitVec 64) :=
.function { name := "op_mstore", inline := false, exported := false, params := [], body := globalBody509_9, returnShape := (Flapjack.Shape.one) }
def globalOutput509 := Pancake.PanLang.declToHOL globalData509
end InitECandidate.Proofs.FrontendStages.Declarations
