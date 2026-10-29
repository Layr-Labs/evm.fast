import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify500
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body516_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def body516_1 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 2#64)

def body516_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body516_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "item")
  (Flapjack.Exp.var Flapjack.VarKind.local "sp")) body516_1 body516_2

def body516_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body516_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body516_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body516_7 : Prog (BitVec 64) :=
.seq body516_5 body516_6

def body516_8 : Prog (BitVec 64) :=
.seq body516_4 body516_7

def body516_9 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 8#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "sp", Flapjack.Exp.const 1#64],
              Flapjack.Exp.var Flapjack.VarKind.local "item"],
          Flapjack.Exp.const 32#64]])) body516_8

def body516_10 : Prog (BitVec 64) :=
.seq body516_3 body516_9

def body516_11 : Prog (BitVec 64) :=
.dec ("sp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 16#64])) body516_10

def body516_12 : Prog (BitVec 64) :=
.seq body516_0 body516_11

def body516_13 : Prog (BitVec 64) :=
.seq body516_4 body516_5

def body516_14 : Prog (BitVec 64) :=
.seq body516_13 body516_6

def body516_15 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 8#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "sp", Flapjack.Exp.const 1#64],
              Flapjack.Exp.var Flapjack.VarKind.local "item"],
          Flapjack.Exp.const 32#64]])) body516_14

def body516_16 : Prog (BitVec 64) :=
.seq body516_3 body516_15

def body516_17 : Prog (BitVec 64) :=
.dec ("sp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 16#64])) body516_16

def body516_18 : Prog (BitVec 64) :=
.seq body516_0 body516_17

def originalData516 : Decl (BitVec 64) :=
.function { name := "op_dup", inline := false, exported := false, params := [("item", Flapjack.Shape.one)], body := body516_12, returnShape := (Flapjack.Shape.one) }
def simplifiedData516 : Decl (BitVec 64) :=
.function { name := "op_dup", inline := false, exported := false, params := [("item", Flapjack.Shape.one)], body := body516_18, returnShape := (Flapjack.Shape.one) }
def original516 := Pancake.PanLang.declToHOL originalData516
def simplified516 := Pancake.PanLang.declToHOL simplifiedData516
end InitECandidate.Proofs.FrontendStages.Declarations
