import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data511
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate495
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody511_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_with_memory"
  [Flapjack.Exp.const 3#64, Flapjack.Exp.var Flapjack.VarKind.local "start",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 32#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def globalBody511_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "v"]

def globalBody511_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody511_3 : Prog (BitVec 64) :=
.seq globalBody511_1 globalBody511_2

def globalBody511_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody511_5 : Prog (BitVec 64) :=
.seq globalBody511_3 globalBody511_4

def globalBody511_6 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
            Flapjack.Exp.const 24#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "s"],
  Flapjack.Exp.const 32#64]) globalBody511_5

def globalBody511_7 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "start"]) globalBody511_6

def globalBody511_8 : Prog (BitVec 64) :=
.seq globalBody511_0 globalBody511_7

def globalBody511_9 : Prog (BitVec 64) :=
.decCall ("start") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody511_8

def globalData511 : Decl (BitVec 64) :=
.function { name := "op_mload", inline := false, exported := false, params := [], body := globalBody511_9, returnShape := (Flapjack.Shape.one) }
def globalOutput511 := Pancake.PanLang.declToHOL globalData511
end InitECandidate.Proofs.FrontendStages.Declarations
