import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify158
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body174_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_set_infinity" [Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body174_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body174_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_double" [Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body174_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_add_affine"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "ax",
    Flapjack.Exp.var Flapjack.VarKind.local "ay"]

def body174_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body174_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "bit") (Flapjack.Exp.const 1#64)) body174_3 body174_4

def body174_6 : Prog (BitVec 64) :=
.decCall ("bit") (Flapjack.Shape.one) ("u256_bit") ([Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body174_5

def body174_7 : Prog (BitVec 64) :=
.seq body174_2 body174_6

def body174_8 : Prog (BitVec 64) :=
.seq body174_1 body174_7

def body174_9 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body174_8

def body174_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body174_11 : Prog (BitVec 64) :=
.seq body174_9 body174_10

def body174_12 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "len") body174_11

def body174_13 : Prog (BitVec 64) :=
.decCall ("len") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "k"]) body174_12

def body174_14 : Prog (BitVec 64) :=
.seq body174_0 body174_13

def body174_15 : Prog (BitVec 64) :=
.seq body174_1 body174_2

def body174_16 : Prog (BitVec 64) :=
.seq body174_15 body174_6

def body174_17 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body174_16

def body174_18 : Prog (BitVec 64) :=
.seq body174_17 body174_10

def body174_19 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "len") body174_18

def body174_20 : Prog (BitVec 64) :=
.decCall ("len") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "k"]) body174_19

def body174_21 : Prog (BitVec 64) :=
.seq body174_0 body174_20

def originalData174 : Decl (BitVec 64) :=
.function { name := "ec_mul", inline := false, exported := false, params := [("out", Flapjack.Shape.one),
  ("k", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("ax", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("ay", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body174_14, returnShape := (Flapjack.Shape.one) }
def simplifiedData174 : Decl (BitVec 64) :=
.function { name := "ec_mul", inline := false, exported := false, params := [("out", Flapjack.Shape.one),
  ("k", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("ax", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("ay", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body174_21, returnShape := (Flapjack.Shape.one) }
def original174 := Pancake.PanLang.declToHOL originalData174
def simplified174 := Pancake.PanLang.declToHOL simplifiedData174
end InitECandidate.Proofs.FrontendStages.Declarations
