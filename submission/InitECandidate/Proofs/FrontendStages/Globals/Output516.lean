import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data516
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate500
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody516_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def globalBody516_1 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 2#64)

def globalBody516_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody516_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "item")
  (Flapjack.Exp.var Flapjack.VarKind.local "sp")) globalBody516_1 globalBody516_2

def globalBody516_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "v"]

def globalBody516_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody516_6 : Prog (BitVec 64) :=
.seq globalBody516_4 globalBody516_5

def globalBody516_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody516_8 : Prog (BitVec 64) :=
.seq globalBody516_6 globalBody516_7

def globalBody516_9 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
            Flapjack.Exp.const 8#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "sp", Flapjack.Exp.const 1#64],
              Flapjack.Exp.var Flapjack.VarKind.local "item"],
          Flapjack.Exp.const 32#64]])) globalBody516_8

def globalBody516_10 : Prog (BitVec 64) :=
.seq globalBody516_3 globalBody516_9

def globalBody516_11 : Prog (BitVec 64) :=
.dec ("sp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 16#64])) globalBody516_10

def globalBody516_12 : Prog (BitVec 64) :=
.seq globalBody516_0 globalBody516_11

def globalData516 : Decl (BitVec 64) :=
.function { name := "op_dup", inline := false, exported := false, params := [("item", Flapjack.Shape.one)], body := globalBody516_12, returnShape := (Flapjack.Shape.one) }
def globalOutput516 := Pancake.PanLang.declToHOL globalData516
end InitECandidate.Proofs.FrontendStages.Declarations
