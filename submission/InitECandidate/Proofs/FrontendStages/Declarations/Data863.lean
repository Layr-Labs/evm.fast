import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify847
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body863_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body863_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "fb"
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "txs",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]])))

def body863_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body863_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) body863_1 body863_2

def body863_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "el"), none)) "rlp_bytes_encoded_len"
  [Flapjack.Exp.var Flapjack.VarKind.local "fb", Flapjack.Exp.var Flapjack.VarKind.local "n"]

def body863_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "fb") (Flapjack.Exp.const 192#64)])) body863_4 body863_2

def body863_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "tl"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "tl", Flapjack.Exp.var Flapjack.VarKind.local "el"])

def body863_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body863_8 : Prog (BitVec 64) :=
.seq body863_6 body863_7

def body863_9 : Prog (BitVec 64) :=
.seq body863_5 body863_8

def body863_10 : Prog (BitVec 64) :=
.dec ("el") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "n") body863_9

def body863_11 : Prog (BitVec 64) :=
.seq body863_3 body863_10

def body863_12 : Prog (BitVec 64) :=
.dec ("fb") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body863_11

def body863_13 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "txs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])) body863_12

def body863_14 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "ntx")) body863_13

def body863_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.var Flapjack.VarKind.local "hl",
      Flapjack.Exp.var Flapjack.VarKind.local "tl"])

def body863_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.const 1#64])

def body863_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def body863_18 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "wl"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "wl", Flapjack.Exp.var Flapjack.VarKind.local "wlen"])

def body863_19 : Prog (BitVec 64) :=
.seq body863_18 body863_7

def body863_20 : Prog (BitVec 64) :=
.decCall ("wlen") (Flapjack.Shape.one) ("withdrawal_rlp_len") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 48#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 44#64]]]) body863_19

def body863_21 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nwd")) body863_20

def body863_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "hl"), none)) "rlp_list_header_len"
  [Flapjack.Exp.var Flapjack.VarKind.local "wl"]

def body863_23 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.var Flapjack.VarKind.local "hl",
      Flapjack.Exp.var Flapjack.VarKind.local "wl"])

def body863_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "hl"), none)) "rlp_list_header_len"
  [Flapjack.Exp.var Flapjack.VarKind.local "total"]

def body863_25 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.var Flapjack.VarKind.local "hl"])

def body863_26 : Prog (BitVec 64) :=
.seq body863_24 body863_25

def body863_27 : Prog (BitVec 64) :=
.seq body863_23 body863_26

def body863_28 : Prog (BitVec 64) :=
.seq body863_22 body863_27

def body863_29 : Prog (BitVec 64) :=
.seq body863_21 body863_28

def body863_30 : Prog (BitVec 64) :=
.seq body863_17 body863_29

def body863_31 : Prog (BitVec 64) :=
.dec ("wl") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body863_30

def body863_32 : Prog (BitVec 64) :=
.dec ("nwd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 56#64])) body863_31

def body863_33 : Prog (BitVec 64) :=
.seq body863_16 body863_32

def body863_34 : Prog (BitVec 64) :=
.seq body863_15 body863_33

def body863_35 : Prog (BitVec 64) :=
.decCall ("hl") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "tl"]) body863_34

def body863_36 : Prog (BitVec 64) :=
.seq body863_14 body863_35

def body863_37 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body863_36

def body863_38 : Prog (BitVec 64) :=
.dec ("tl") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body863_37

def body863_39 : Prog (BitVec 64) :=
.dec ("ntx") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 40#64])) body863_38

def body863_40 : Prog (BitVec 64) :=
.dec ("txs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 32#64])) body863_39

def body863_41 : Prog (BitVec 64) :=
.dec ("total") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "he")) body863_40

def body863_42 : Prog (BitVec 64) :=
.seq body863_0 body863_41

def body863_43 : Prog (BitVec 64) :=
.decCall ("he") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_header") ([Flapjack.Exp.var Flapjack.VarKind.local "hdr"]) body863_42

def body863_44 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body863_43

def body863_45 : Prog (BitVec 64) :=
.seq body863_5 body863_6

def body863_46 : Prog (BitVec 64) :=
.seq body863_45 body863_7

def body863_47 : Prog (BitVec 64) :=
.dec ("el") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "n") body863_46

def body863_48 : Prog (BitVec 64) :=
.seq body863_3 body863_47

def body863_49 : Prog (BitVec 64) :=
.dec ("fb") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body863_48

def body863_50 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "txs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])) body863_49

def body863_51 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "ntx")) body863_50

def body863_52 : Prog (BitVec 64) :=
.seq body863_15 body863_16

def body863_53 : Prog (BitVec 64) :=
.seq body863_17 body863_21

def body863_54 : Prog (BitVec 64) :=
.seq body863_53 body863_22

def body863_55 : Prog (BitVec 64) :=
.seq body863_54 body863_23

def body863_56 : Prog (BitVec 64) :=
.seq body863_55 body863_24

def body863_57 : Prog (BitVec 64) :=
.seq body863_56 body863_25

def body863_58 : Prog (BitVec 64) :=
.dec ("wl") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body863_57

def body863_59 : Prog (BitVec 64) :=
.dec ("nwd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 56#64])) body863_58

def body863_60 : Prog (BitVec 64) :=
.seq body863_52 body863_59

def body863_61 : Prog (BitVec 64) :=
.decCall ("hl") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "tl"]) body863_60

def body863_62 : Prog (BitVec 64) :=
.seq body863_51 body863_61

def body863_63 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body863_62

def body863_64 : Prog (BitVec 64) :=
.dec ("tl") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body863_63

def body863_65 : Prog (BitVec 64) :=
.dec ("ntx") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 40#64])) body863_64

def body863_66 : Prog (BitVec 64) :=
.dec ("txs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 32#64])) body863_65

def body863_67 : Prog (BitVec 64) :=
.dec ("total") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "he")) body863_66

def body863_68 : Prog (BitVec 64) :=
.seq body863_0 body863_67

def body863_69 : Prog (BitVec 64) :=
.decCall ("he") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_header") ([Flapjack.Exp.var Flapjack.VarKind.local "hdr"]) body863_68

def body863_70 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body863_69

def originalData863 : Decl (BitVec 64) :=
.function { name := "block_rlp_length", inline := false, exported := false, params := [("hdr", Flapjack.Shape.one), ("pl", Flapjack.Shape.one)], body := body863_44, returnShape := (Flapjack.Shape.one) }
def simplifiedData863 : Decl (BitVec 64) :=
.function { name := "block_rlp_length", inline := false, exported := false, params := [("hdr", Flapjack.Shape.one), ("pl", Flapjack.Shape.one)], body := body863_70, returnShape := (Flapjack.Shape.one) }
def original863 := Pancake.PanLang.declToHOL originalData863
def simplified863 := Pancake.PanLang.declToHOL simplifiedData863
end InitECandidate.Proofs.FrontendStages.Declarations
