import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify821
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body837_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.const 1#64)

def body837_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "w" (Flapjack.Exp.const 1#64)

def body837_2 : Prog (BitVec 64) :=
.seq body837_0 body837_1

def body837_3 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.const 128#64)

def body837_4 : Prog (BitVec 64) :=
.seq body837_3 body837_1

def body837_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "succeeded") (Flapjack.Exp.const 0#64)) body837_2 body837_4

def body837_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def body837_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "cumulative_gas"]

def body837_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "logs_bloom"
  [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.var Flapjack.VarKind.local "bloom"]

def body837_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "bloom",
    Flapjack.Exp.const 256#64]

def body837_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "encode_logs"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "logs"]

def body837_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_finish_list"
  [Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.var Flapjack.VarKind.local "p"]

def body837_12 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "tx_type")

def body837_13 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.const 1#64],
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 1#64]])

def body837_14 : Prog (BitVec 64) :=
.seq body837_12 body837_13

def body837_15 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body837_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "tx_type") (Flapjack.Exp.const 0#64)) body837_14 body837_15

def body837_17 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct [Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def body837_18 : Prog (BitVec 64) :=
.seq body837_16 body837_17

def body837_19 : Prog (BitVec 64) :=
.seq body837_11 body837_18

def body837_20 : Prog (BitVec 64) :=
.seq body837_6 body837_19

def body837_21 : Prog (BitVec 64) :=
.seq body837_10 body837_20

def body837_22 : Prog (BitVec 64) :=
.seq body837_6 body837_21

def body837_23 : Prog (BitVec 64) :=
.seq body837_9 body837_22

def body837_24 : Prog (BitVec 64) :=
.seq body837_8 body837_23

def body837_25 : Prog (BitVec 64) :=
.decCall ("bloom") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 256#64]) body837_24

def body837_26 : Prog (BitVec 64) :=
.seq body837_6 body837_25

def body837_27 : Prog (BitVec 64) :=
.seq body837_7 body837_26

def body837_28 : Prog (BitVec 64) :=
.seq body837_6 body837_27

def body837_29 : Prog (BitVec 64) :=
.seq body837_5 body837_28

def body837_30 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body837_29

def body837_31 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.const 9#64]) body837_30

def body837_32 : Prog (BitVec 64) :=
.dec ("start") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 1#64]) body837_31

def body837_33 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "bound", Flapjack.Exp.const 400#64]]) body837_32

def body837_34 : Prog (BitVec 64) :=
.decCall ("bound") (Flapjack.Shape.one) ("logs_encoded_bound") ([Flapjack.Exp.var Flapjack.VarKind.local "logs"]) body837_33

def body837_35 : Prog (BitVec 64) :=
.seq body837_5 body837_6

def body837_36 : Prog (BitVec 64) :=
.seq body837_35 body837_7

def body837_37 : Prog (BitVec 64) :=
.seq body837_36 body837_6

def body837_38 : Prog (BitVec 64) :=
.seq body837_8 body837_9

def body837_39 : Prog (BitVec 64) :=
.seq body837_38 body837_6

def body837_40 : Prog (BitVec 64) :=
.seq body837_39 body837_10

def body837_41 : Prog (BitVec 64) :=
.seq body837_40 body837_6

def body837_42 : Prog (BitVec 64) :=
.seq body837_41 body837_11

def body837_43 : Prog (BitVec 64) :=
.seq body837_42 body837_16

def body837_44 : Prog (BitVec 64) :=
.seq body837_43 body837_17

def body837_45 : Prog (BitVec 64) :=
.decCall ("bloom") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 256#64]) body837_44

def body837_46 : Prog (BitVec 64) :=
.seq body837_37 body837_45

def body837_47 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body837_46

def body837_48 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.const 9#64]) body837_47

def body837_49 : Prog (BitVec 64) :=
.dec ("start") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 1#64]) body837_48

def body837_50 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "bound", Flapjack.Exp.const 400#64]]) body837_49

def body837_51 : Prog (BitVec 64) :=
.decCall ("bound") (Flapjack.Shape.one) ("logs_encoded_bound") ([Flapjack.Exp.var Flapjack.VarKind.local "logs"]) body837_50

def originalData837 : Decl (BitVec 64) :=
.function { name := "encode_receipt", inline := false, exported := false, params := [("tx_type", Flapjack.Shape.one), ("succeeded", Flapjack.Shape.one), ("cumulative_gas", Flapjack.Shape.one),
  ("logs", Flapjack.Shape.one)], body := body837_34, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData837 : Decl (BitVec 64) :=
.function { name := "encode_receipt", inline := false, exported := false, params := [("tx_type", Flapjack.Shape.one), ("succeeded", Flapjack.Shape.one), ("cumulative_gas", Flapjack.Shape.one),
  ("logs", Flapjack.Shape.one)], body := body837_51, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def original837 := Pancake.PanLang.declToHOL originalData837
def simplified837 := Pancake.PanLang.declToHOL simplifiedData837
end InitECandidate.Proofs.FrontendStages.Declarations
