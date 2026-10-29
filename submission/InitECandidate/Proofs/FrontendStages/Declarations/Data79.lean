import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify63
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body79_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 192#64, Flapjack.Exp.var Flapjack.VarKind.local "n3"])

def body79_1 : Prog (BitVec 64) :=
.decCall ("n3") (Flapjack.Shape.one) ("bit_length64") ([Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a")]) body79_0

def body79_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body79_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 0#64)) body79_1 body79_2

def body79_4 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 128#64, Flapjack.Exp.var Flapjack.VarKind.local "n2"])

def body79_5 : Prog (BitVec 64) :=
.decCall ("n2") (Flapjack.Shape.one) ("bit_length64") ([Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a")]) body79_4

def body79_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 0#64)) body79_5 body79_2

def body79_7 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 64#64, Flapjack.Exp.var Flapjack.VarKind.local "n1"])

def body79_8 : Prog (BitVec 64) :=
.decCall ("n1") (Flapjack.Shape.one) ("bit_length64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a")]) body79_7

def body79_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 0#64)) body79_8 body79_2

def body79_10 : Prog (BitVec 64) :=
Flapjack.Prog.call none "bit_length64" [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def body79_11 : Prog (BitVec 64) :=
.seq body79_9 body79_10

def body79_12 : Prog (BitVec 64) :=
.seq body79_6 body79_11

def body79_13 : Prog (BitVec 64) :=
.seq body79_3 body79_12

def body79_14 : Prog (BitVec 64) :=
.seq body79_3 body79_6

def body79_15 : Prog (BitVec 64) :=
.seq body79_14 body79_9

def body79_16 : Prog (BitVec 64) :=
.seq body79_15 body79_10

def originalData79 : Decl (BitVec 64) :=
.function { name := "u256_bit_length", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body79_13, returnShape := (Flapjack.Shape.one) }
def simplifiedData79 : Decl (BitVec 64) :=
.function { name := "u256_bit_length", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body79_16, returnShape := (Flapjack.Shape.one) }
def original79 := Pancake.PanLang.declToHOL originalData79
def simplified79 := Pancake.PanLang.declToHOL simplifiedData79
end InitECandidate.Proofs.FrontendStages.Declarations
