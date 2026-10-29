import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify270
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body286_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "cached",
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 16#64])])

def body286_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body286_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "cached") (Flapjack.Exp.const 0#64)) body286_0 body286_1

def body286_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 2#64]

def body286_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 0#64)) body286_3 body286_1

def body286_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "_node_rlp_fill" [Flapjack.Exp.var Flapjack.VarKind.local "node"]

def body286_6 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 8#64]),
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 16#64])])

def body286_7 : Prog (BitVec 64) :=
.seq body286_5 body286_6

def body286_8 : Prog (BitVec 64) :=
.seq body286_4 body286_7

def body286_9 : Prog (BitVec 64) :=
.seq body286_2 body286_8

def body286_10 : Prog (BitVec 64) :=
.dec ("cached") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 8#64])) body286_9

def body286_11 : Prog (BitVec 64) :=
.seq body286_2 body286_4

def body286_12 : Prog (BitVec 64) :=
.seq body286_11 body286_5

def body286_13 : Prog (BitVec 64) :=
.seq body286_12 body286_6

def body286_14 : Prog (BitVec 64) :=
.dec ("cached") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 8#64])) body286_13

def originalData286 : Decl (BitVec 64) :=
.function { name := "node_rlp", inline := false, exported := false, params := [("node", Flapjack.Shape.one)], body := body286_10, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData286 : Decl (BitVec 64) :=
.function { name := "node_rlp", inline := false, exported := false, params := [("node", Flapjack.Shape.one)], body := body286_14, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def original286 := Pancake.PanLang.declToHOL originalData286
def simplified286 := Pancake.PanLang.declToHOL simplifiedData286
end InitECandidate.Proofs.FrontendStages.Declarations
