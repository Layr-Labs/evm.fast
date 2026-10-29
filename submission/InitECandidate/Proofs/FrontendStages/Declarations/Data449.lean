import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify433
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body449_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 4#64)

def body449_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body449_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "gl")
  (Flapjack.Exp.var Flapjack.VarKind.local "amount")) body449_0 body449_1

def body449_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "gl", Flapjack.Exp.var Flapjack.VarKind.local "amount"])

def body449_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 184#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 184#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "amount"])

def body449_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body449_6 : Prog (BitVec 64) :=
.seq body449_4 body449_5

def body449_7 : Prog (BitVec 64) :=
.seq body449_3 body449_6

def body449_8 : Prog (BitVec 64) :=
.seq body449_2 body449_7

def body449_9 : Prog (BitVec 64) :=
.dec ("gl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 64#64])) body449_8

def body449_10 : Prog (BitVec 64) :=
.seq body449_2 body449_3

def body449_11 : Prog (BitVec 64) :=
.seq body449_10 body449_4

def body449_12 : Prog (BitVec 64) :=
.seq body449_11 body449_5

def body449_13 : Prog (BitVec 64) :=
.dec ("gl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 64#64])) body449_12

def originalData449 : Decl (BitVec 64) :=
.function { name := "charge_gas", inline := false, exported := false, params := [("amount", Flapjack.Shape.one)], body := body449_9, returnShape := (Flapjack.Shape.one) }
def simplifiedData449 : Decl (BitVec 64) :=
.function { name := "charge_gas", inline := false, exported := false, params := [("amount", Flapjack.Shape.one)], body := body449_13, returnShape := (Flapjack.Shape.one) }
def original449 := Pancake.PanLang.declToHOL originalData449
def simplified449 := Pancake.PanLang.declToHOL simplifiedData449
end InitECandidate.Proofs.FrontendStages.Declarations
