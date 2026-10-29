import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify73
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body89_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "l")
        (Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "pos", Flapjack.Exp.const 7#64],
            Flapjack.Exp.const 8#64]),
      Flapjack.Exp.const 255#64])

def body89_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body89_2 : Prog (BitVec 64) :=
.seq body89_0 body89_1

def body89_3 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.one) ("u256_limb") ([Flapjack.Exp.var Flapjack.VarKind.local "a",
  Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "pos") (Flapjack.Exp.const 3#64)]) body89_2

def body89_4 : Prog (BitVec 64) :=
.dec ("pos") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "i"]) body89_3

def body89_5 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "len")) body89_4

def body89_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "len")

def body89_7 : Prog (BitVec 64) :=
.seq body89_5 body89_6

def body89_8 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body89_7

def body89_9 : Prog (BitVec 64) :=
.decCall ("len") (Flapjack.Shape.one) ("u256_byte_length") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) body89_8

def originalData89 : Decl (BitVec 64) :=
.function { name := "u256_to_be_min", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("out", Flapjack.Shape.one)], body := body89_9, returnShape := (Flapjack.Shape.one) }
def simplifiedData89 : Decl (BitVec 64) :=
.function { name := "u256_to_be_min", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("out", Flapjack.Shape.one)], body := body89_9, returnShape := (Flapjack.Shape.one) }
def original89 := Pancake.PanLang.declToHOL originalData89
def simplified89 := Pancake.PanLang.declToHOL simplifiedData89
end InitECandidate.Proofs.FrontendStages.Declarations
