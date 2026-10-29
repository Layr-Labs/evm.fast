import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify72
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body88_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "out") (Flapjack.Exp.var Flapjack.VarKind.local "w")

def body88_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "bswap64"
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def body88_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def body88_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "bswap64"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def body88_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def body88_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "bswap64"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def body88_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def body88_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body88_8 : Prog (BitVec 64) :=
.seq body88_6 body88_7

def body88_9 : Prog (BitVec 64) :=
.seq body88_5 body88_8

def body88_10 : Prog (BitVec 64) :=
.seq body88_4 body88_9

def body88_11 : Prog (BitVec 64) :=
.seq body88_3 body88_10

def body88_12 : Prog (BitVec 64) :=
.seq body88_2 body88_11

def body88_13 : Prog (BitVec 64) :=
.seq body88_1 body88_12

def body88_14 : Prog (BitVec 64) :=
.seq body88_0 body88_13

def body88_15 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("bswap64") ([Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a")]) body88_14

def body88_16 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body88_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)) body88_15 body88_16

def body88_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def body88_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 8#64],
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def body88_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 16#64],
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def body88_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 24#64],
    Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def body88_22 : Prog (BitVec 64) :=
.seq body88_21 body88_7

def body88_23 : Prog (BitVec 64) :=
.seq body88_20 body88_22

def body88_24 : Prog (BitVec 64) :=
.seq body88_19 body88_23

def body88_25 : Prog (BitVec 64) :=
.seq body88_18 body88_24

def body88_26 : Prog (BitVec 64) :=
.seq body88_17 body88_25

def body88_27 : Prog (BitVec 64) :=
.seq body88_0 body88_1

def body88_28 : Prog (BitVec 64) :=
.seq body88_27 body88_2

def body88_29 : Prog (BitVec 64) :=
.seq body88_28 body88_3

def body88_30 : Prog (BitVec 64) :=
.seq body88_29 body88_4

def body88_31 : Prog (BitVec 64) :=
.seq body88_30 body88_5

def body88_32 : Prog (BitVec 64) :=
.seq body88_31 body88_6

def body88_33 : Prog (BitVec 64) :=
.seq body88_32 body88_7

def body88_34 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("bswap64") ([Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a")]) body88_33

def body88_35 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)) body88_34 body88_16

def body88_36 : Prog (BitVec 64) :=
.seq body88_35 body88_18

def body88_37 : Prog (BitVec 64) :=
.seq body88_36 body88_19

def body88_38 : Prog (BitVec 64) :=
.seq body88_37 body88_20

def body88_39 : Prog (BitVec 64) :=
.seq body88_38 body88_21

def body88_40 : Prog (BitVec 64) :=
.seq body88_39 body88_7

def originalData88 : Decl (BitVec 64) :=
.function { name := "u256_to_be32", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("out", Flapjack.Shape.one)], body := body88_26, returnShape := (Flapjack.Shape.one) }
def simplifiedData88 : Decl (BitVec 64) :=
.function { name := "u256_to_be32", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("out", Flapjack.Shape.one)], body := body88_40, returnShape := (Flapjack.Shape.one) }
def original88 := Pancake.PanLang.declToHOL originalData88
def simplified88 := Pancake.PanLang.declToHOL simplifiedData88
end InitECandidate.Proofs.FrontendStages.Declarations
