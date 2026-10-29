import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify344
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body360_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "journal_n"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.global "journal_n", Flapjack.Exp.const 1#64])

def body360_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 24#64])]

def body360_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_del"
  [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key"]

def body360_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 16#64]))
  (Flapjack.Exp.const 0#64)) body360_1 body360_2

def body360_4 : Prog (BitVec 64) :=
.dec ("key") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 8#64])) body360_3

def body360_5 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "r")) body360_4

def body360_6 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.global "journal",
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.var Flapjack.VarKind.global "journal_n", Flapjack.Exp.const 32#64]]) body360_5

def body360_7 : Prog (BitVec 64) :=
.seq body360_0 body360_6

def body360_8 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "snap")
  (Flapjack.Exp.var Flapjack.VarKind.global "journal_n")) body360_7

def body360_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body360_10 : Prog (BitVec 64) :=
.seq body360_8 body360_9

def originalData360 : Decl (BitVec 64) :=
.function { name := "state_restore", inline := false, exported := false, params := [("snap", Flapjack.Shape.one)], body := body360_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData360 : Decl (BitVec 64) :=
.function { name := "state_restore", inline := false, exported := false, params := [("snap", Flapjack.Shape.one)], body := body360_10, returnShape := (Flapjack.Shape.one) }
def original360 := Pancake.PanLang.declToHOL originalData360
def simplified360 := Pancake.PanLang.declToHOL simplifiedData360
end InitECandidate.Proofs.FrontendStages.Declarations
