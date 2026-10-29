import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify58
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body74_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body74_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body74_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")])
  (Flapjack.Exp.const 0#64)) body74_0 body74_1

def body74_3 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_neg" [Flapjack.Exp.var Flapjack.VarKind.local "q"]

def body74_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
        Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")])
    (Flapjack.Exp.const 63#64))
  (Flapjack.Exp.const 1#64)) body74_3 body74_1

def body74_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "q")

def body74_6 : Prog (BitVec 64) :=
.seq body74_4 body74_5

def body74_7 : Prog (BitVec 64) :=
.decCall ("q") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_div") ([Flapjack.Exp.var Flapjack.VarKind.local "aa", Flapjack.Exp.var Flapjack.VarKind.local "bb"]) body74_6

def body74_8 : Prog (BitVec 64) :=
.decCall ("bb") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_abs") ([Flapjack.Exp.var Flapjack.VarKind.local "b"]) body74_7

def body74_9 : Prog (BitVec 64) :=
.decCall ("aa") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_abs") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) body74_8

def body74_10 : Prog (BitVec 64) :=
.seq body74_2 body74_9

def originalData74 : Decl (BitVec 64) :=
.function { name := "u256_sdiv", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body74_10, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData74 : Decl (BitVec 64) :=
.function { name := "u256_sdiv", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body74_10, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original74 := Pancake.PanLang.declToHOL originalData74
def simplified74 := Pancake.PanLang.declToHOL simplifiedData74
end InitECandidate.Proofs.FrontendStages.Declarations
